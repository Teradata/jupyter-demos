#!//usr/bin/python3
import sys
import pandas as pd
from iminuit import Minuit, describe
import numpy as np

# Get Report Date from command line
if len(sys.argv) != 3:
	print('Usage: covid19.py [date] [country]')
	sys.exit(1)
rep_date = sys.argv[1]
country = sys.argv[2]

# Import data locally
data_url = "https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-" + rep_date + ".xls"
df = pd.read_excel(data_url)

# Filter data
df = df[df['CountryExp']==country]
df = df[df['NewConfCases']>0]
df = df.sort_values(by=['DateRep'])
df["CumulConfCases"] = df["NewConfCases"].cumsum()
df["CumulDeaths"] = df["NewDeaths"].cumsum()
df = df.filter(items=['DateRep', 'NewConfCases','CumulConfCases']). \
    rename(columns={"DateRep": "T", "NewConfCases": "dN", "CumulConfCases": "N"}). \
    set_index('T')

# Prepare model fit
NMAX = 60.5e6 * 0.01
x = df['N']
y = df['dN']

def fit(a, b):
    return a * (NMAX - x) + b * x * (NMAX - x)
def chisquare(a, b):    
    return (y - fit(a,b)).pow(2).sum()

# Execute the fit
m = Minuit(chisquare, print_level=0, pedantic=False)
m.migrad()
a=m.values["a"]
b=m.values["b"]
xx=np.arange(0,NMAX,NMAX/100)
yy = a * (NMAX - xx) + b * xx * (NMAX - xx)
print("Max:",max(yy))

