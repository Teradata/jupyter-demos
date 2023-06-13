import sys
import subprocess
import pandas as pd
import networkx as nx
import community

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

betweenness = nx.betweenness_centrality(G)

for node, score in betweenness.items():
    print('%s\t%s' % (int(node), float(score)))