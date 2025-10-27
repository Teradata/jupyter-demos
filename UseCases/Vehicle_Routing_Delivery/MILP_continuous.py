import json
import pandas as pd
import warnings
warnings.filterwarnings("ignore")
from sklearn.metrics import confusion_matrix, ConfusionMatrixDisplay
import numpy as np
from sklearn import metrics
from collections import OrderedDict, defaultdict
from pulp import *
import pandas as pd
import sys

delimiter = '\t'
inputData = []
for line in sys.stdin.read().splitlines():
    # print(line[0])
    line = line.split(delimiter)
    # print(line[0][0])
    inputData.append(line)

columns = ['v_id','truck_id', 'max_vol_cm3', 'max_wt_lbs', 'pkg_id', 'pkg_zone','pkg_vol_cm3' , 'link_id','node_i', 'node_j','cost']
df = pd.DataFrame(inputData, columns=columns).copy()

df['v_id'] = df['v_id'].astype(int)
df['truck_id'] = df['truck_id'].astype(int)

df['max_vol_cm3'] = df['max_vol_cm3'].str.replace(' ', '').apply(lambda x: x.lower())
df['max_vol_cm3'] = df['max_vol_cm3'].astype(float)

df['max_wt_lbs'] = df['max_wt_lbs'].str.replace(' ', '').apply(lambda x: x.lower())
df['max_wt_lbs'] = df['max_wt_lbs'].astype(float)

df['pkg_vol_cm3'] = df['pkg_vol_cm3'].str.replace(' ', '').apply(lambda x: x.lower())
df['pkg_vol_cm3'] = df['pkg_vol_cm3'].astype(float)

df['cost'] = df['cost'].str.replace(' ', '').apply(lambda x: x.lower())
df['cost'] = df['cost'].astype(float)

df['pkg_zone'] = df['pkg_zone'].astype(str)

df['pkg_id'] = df['pkg_id'].astype(int)
df['link_id'] = df['link_id'].astype(int)

# Delivery of pkg p to zone z binary matrix
pkg_df = df[['pkg_id','pkg_zone', 'pkg_vol_cm3']]
pkg_df.dropna(inplace = True)
pkg_df.sort_values(by = 'pkg_id', inplace = True)

truck_df = df[['truck_id','max_vol_cm3']]

truck_df.dropna(inplace = True)
truck_df = truck_df[truck_df.max_vol_cm3!=0.]

truck_df['truck_id'] = truck_df['truck_id'].astype('int64')
truck_df.sort_values(by = 'truck_id', inplace = True)


#Delivery binary matrix of package and zones

D = pkg_df.copy()

D = pd.get_dummies(data=D, columns=['pkg_id', 'pkg_zone']) #.astype(int) # .set_index('pkg_id')

# # #D['pkg_zone_O'] = 1


z = df[['link_id', 'node_i','node_j','cost']]
    
z.dropna(inplace = True)
z = z[z.cost!=0.] # since NAs were replaced by 0s in sql

z['link_id'] = z['link_id'].astype('int64')
z.sort_values(by = 'link_id',inplace=True)

z2 = pd.DataFrame()
# create reverse links for two-way traversing and append
z2['node_i'] = z['node_j'] 
z2['node_j'] = z['node_i']
z2['cost'] = z['cost']
z2['link_id'] = np.arange(len(z)+1, len(z)+len(z)+1)

zone_links = pd.concat([z, z2], ignore_index=True)
# zone_links = z.append(z2).reset_index(drop=True)
zone_links.sort_values(by='link_id')

#Nodes that require deliveries
nodes = list(np.unique(zone_links.node_i.tolist() + zone_links.node_j.tolist()))

for n in nodes:
    if n == "O":
        nodes.remove(n)
    if n == 'None':
        nodes.remove(n)

# packages and trucks
t_ids = truck_df['truck_id'].tolist()
p_ids = pkg_df['pkg_id'].tolist()

pkg_vols = dict(zip(pkg_df['pkg_id'].tolist(), pkg_df['pkg_vol_cm3'].tolist()))
truck_vols = dict(zip(truck_df['truck_id'].tolist(), truck_df['max_vol_cm3'].tolist()))
pt_assign = [(p,t) for p in p_ids for t in t_ids]

# Create data for each truck
for t in t_ids:
    exec(f'zone_links_t{t} = zone_links.copy()')
    exec(f"zone_links_t{t}['node_i'] = zone_links['node_i']+'{t}'")
    exec(f"zone_links_t{t}['node_j'] = zone_links['node_j']+'{t}'")
    
    exec(f"node_i{t} = zone_links_t{t}['node_i'].tolist()")
    exec(f"node_j{t} = zone_links_t{t}['node_j'].tolist()")
    exec(f"arcs_t{t} = list(zip(node_i{t}, node_j{t}))")
    
    exec(f"arcData_t{t} = dict(zip(arcs_t{t}, (zone_links_t{t}.loc[i,['cost']].tolist() for i in zone_links_t{t}.index)))")
    exec(f"costs_t{t} = splitDict(arcData_t{t})[0]")


# Decision Variables

# pkg and truck assignment variable
pt_assign_var = LpVariable.dicts("Assign pkg truck", pt_assign, cat=LpBinary, lowBound=0, upBound=1)
    
for t in t_ids:
    # assignment var pkg-truck
    exec(f"P{t} = [pt_assign_var[(i, {t})] for i in p_ids]") 
    
    # Flow at Origin - Production nodes - sum of all pkgs assigned to a truck
    exec(f"B{t} = lpSum(P{t})")
    
    # Creates the selector/binary variables on each segment for each truck
    exec(f"selector_vars_t{t} = LpVariable.dicts(\"Route_select_t{t}\", arcs_t{t}, cat=LpBinary, lowBound=0)")
    
    # Z vars 
    exec(f"Z_var_t{t} = LpVariable.dicts(\"Z_{t}\", arcs_t{t}, cat=LpInteger, lowBound=0)")
    
    # Consumption variables 
    for n in nodes:
        exec(f"F{n}{t} = lpSum((D['pkg_zone_{n}'] * P{t}))*-1") # Diz * Pij 
        
# Create total demand at nodes variable 
F = defaultdict(str)
for n in nodes:
    for t in t_ids:
        exec(f"a = F{n}{t}")
        F[n, t] += a
        
# Creates the 'prob' variable to contain the problem data 
prob = LpProblem("Min Cost Flow Problem", LpMinimize)

pkg_vols = dict(zip(list(pkg_df.pkg_id), list(pkg_df.pkg_vol_cm3)))
truck_vols = dict(zip(list(truck_df.truck_id), list(truck_df.max_vol_cm3)))
# truck_wts = dict(zip(list(truck_df.truck_id), list(truck_df.max_wt_lbs)))
demands = dict(list(zip(sorted(nodes), D.sum())))

# CONSTRAINTS

# Each package needs to be assigned to only one truck of all
for i in p_ids:
    prob += lpSum([pt_assign_var[(i,t)] for t in t_ids]) == 1

M = 100
# print(prob.variables())

for t in t_ids:
    # Volumes of all pkgs on a truck <= Vol of truck
    prob += lpSum([pt_assign_var[(i,t)] * pkg_vols[i] for i in p_ids]) <= truck_vols[t] 

# Selector variable constraint - only one outgoing edge to be selected
    exec(f"nodes_t{t} = set([node for arc in arcs_t{t} for node in arc])")
    
    exec(f"""for node in nodes_t{t}:
    outgoing_arcs = [arc for arc in arcs_t{t} if arc[0] == node]
    prob += lpSum(selector_vars_t{t}[arc] for arc in outgoing_arcs) <= 1
    """)

    # Big M Linearization:
    

    exec(f"""for (i,j) in arcs_t{t}: # All arcs for truck t
        prob += Z_var_t{t}[(i,j)] <= selector_vars_t{t}[(i,j)] * M
        """)

        # Flow conservation: out-in == -assignment, except for origin node where out-in == all pkgs on truck
    exec(f"""for n in nodes_t{t}:

            if n.split(str(t))[0] in nodes:   # Changing from A1, B1, etc. to A, B, etc.

                prob += lpSum([Z_var_t{t}[(i, j)] for (i, j) in arcs_t{t} if i == n]) + \\
                lpSum([Z_var_t{t}[(i, j)]*-1 for (i, j) in arcs_t{t} if j == n]) == F[n.split(str(t))[0], t]

            else:
                prob += lpSum([Z_var_t{t}[(i, j)] for (i, j) in arcs_t{t} if i == n]) + \\
                lpSum([Z_var_t{t}[(i, j)]*-1 for (i, j) in arcs_t{t} if j == n]) == B{t}
        """)

flows_list = []
costs_list = []
arcs_list = []
selectors_list = []

for t in t_ids:
    exec(f"flows_list += [Z_var_t{t}]") # flow_vars_t
    exec(f"costs_list += [costs_t{t}]")
    exec(f"arcs_list += arcs_t{t}")
    exec(f"selectors_list += [selector_vars_t{t}]")
    
# Combine dictionaries into one
flows_dict = {}
costs_dict = {}
selectors_dict = {}

for d in selectors_list:
    selectors_dict = {**selectors_dict, **d}
for d in flows_list:
    flows_dict = {**flows_dict, **d}
for d in costs_list:
    costs_dict = {**costs_dict, **d}

# Creates the objective function

# Flows and costs of all trucks
prob += lpSum([flows_dict[a] * costs_dict[a] for a in arcs_list]), "Total Cost of Transport"

# The problem is solved using PuLP's choice of Solver
LpSolverDefault.msg = 0
prob.solve()


DELIMITER = '\t'
# The optimised objective function value is printed to the screen    
#print("Total Cost of Transportation = ", DELIMITER,value(prob.objective))

status = 0
if (LpStatus[prob.status] == 'Optimal'):
    status = 1
print('Status',DELIMITER, status)

if status == 1:
    for v in prob.variables():
        print(v.name, DELIMITER, v.varValue)
    print("Cost", DELIMITER, value(prob.objective))

    
    
