#!/usr/bin/env python
# coding=utf-8
import sys
import string
import numpy as np
import seaborn as sb
import matplotlib.pyplot as plt
import pandas as pd
from pandas import DataFrame

    

df = pd.read_csv(sys.argv[1])
df['response'] = df['action'] - df['tipblank'] 
df['name_only'] = df['name'].str.replace('\d+$', '')

list_df = list()
for i in range(3):
    Index= ['aaa', 'bbb', 'ccc', 'ddd', 'eee']
    Cols = ['A', 'B', 'C', 'D']
    df = DataFrame(abs(np.random.randn(5, 4)), index=Index, columns=Cols)
    list_df.append(df)
# for index, row in df.iterrows():
#     if index <10: 
#         print(index)
#         print(row)
#     if row['name_only'] in ['nan','test']:
#         continue

# print(df)

# data = np.random.rand(5, 8)
# print(data)
# # heat_map = sb.heatmap(data, cmap="cubehelix",annot=True)
# heat_map = sb.heatmap(data, annot=True, cbar_kws={'label': 'My Colorbar', 'orientation': 'horizontal'})
# # heat_map = sb.heatmap(data, cmap="YlGnBu")

# plt.xlabel("Values on X axis")
# plt.ylabel('Values on Y axis')
# # plt.show()
# plt.savefig('testblueline.png')


