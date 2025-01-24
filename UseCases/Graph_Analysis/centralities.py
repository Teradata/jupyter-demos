import sys
import subprocess
import pandas as pd
import numpy as np
import networkx as nx
import community
import scipy.sparse as sp
import scipy.sparse.linalg as sp_linalg

# Read input

delimiter = '\t'
# delimiter = ','
inputData = []

for line in sys.stdin:
    line = line.split(delimiter)
    inputData.append(line)
    

columns = ['fromuserid', 'touserid']
df = pd.DataFrame(inputData, columns=columns)

# Create an undirected graph from the dataframe
G = nx.from_pandas_edgelist(df, source='fromuserid', target='touserid', create_using=nx.Graph())

if not nx.is_empty(G):
    centrality = nx.eigenvector_centrality(G, max_iter=500)
    centrality = pd.DataFrame(sorted((v, f"{c:0.2f}") for v, c in centrality.items()), columns = ['node', 'centrality'])


    for i in range(len(centrality)):
        print('%s\t%s' % (int(centrality['node'][i]), float(centrality['centrality'][i])))