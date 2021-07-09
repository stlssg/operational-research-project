# w = 10    #背包大小
# n = 5    #物品个数
# listWV = [[0,0]]
# # listTemp = []
# # for i in range(n):
# #     listTemp = list(map(int, input().split()))  #借助临时list每次新增物品对应的list加入到listWV中
# #     listWV.append(listTemp) #依次输入每个物品的重量与价值
# # print(listWV)
# listWV += [[2,6],[5,3],[4,5],[2,4],[3,6]]
    
# # 建立价值数组，初始值均为0，目的是为了在value[0][j]与value[i][0]的情况为0，毕竟不放入物品或者背包容量为0的情况下，背包中的价值肯定为0，
# value = [[0 for i in range(w+1)] for j in range(n+1)]
# for i in range(1, n+1):
#     for j in range(1, w+1):
#         if j < listWV[i][0]:    #若物品不能放到背包中
#             value[i][j] = value[i-1][j] #价值与之前相同
#         else:   #物品可以放到背包中，最大价值在两者之中取
#             value[i][j] = max(value[i-1][j], value[i-1][j-listWV[i][0]]+listWV[i][1])
# print(value[n][w])

# # 打印放入的物品情况，需要遍历value数组
# i = n
# j = w
# listInfo = [0 for i in range(n+1)]
# while i>0:
#     if value[i][j] > value[i-1][j]: #若在背包容量相同的情况下，后一个物品对应的背包价值大于了前一个物品对应的背包价值，那么说明第i个物品一定放入了背包
#         listInfo[i] = 1
#         j = j - listWV[i][0]
#     i -= 1
# listFlag = []
# for i in range(len(listInfo)):
#     if listInfo[i] == 1:
#         listFlag.append(i)
# print(listFlag)

# import numpy as np
# def solution(max_weight,weight,value,num):

#     dp = np.zeros((len(weight)+1,max_weight+1),dtype=int)

#     for i in range(1,len(weight)+1):
#         for j in range(1,max_weight+1):
#             if weight[i-1] > j:
#                 dp[i][j] = dp[i-1][j]
#             else:
#                 count = min(num[i-1],j//weight[i-1])
#                 dp[i][j] = dp[i-1][j]
#                 for k in range(1,count+1):
#                     temp = dp[i-1][j-k * weight[i-1]] + k * value[i-1]
#                     if temp > dp[i][j]:
#                         dp[i][j] = temp

#     print(dp)
#     return dp

# def things(max_weight,dp,weight,value,num):
#     raw = len(weight)
#     col = max_weight
#     remain = dp[raw][col]
#     goods = [0,0,0]

#     while remain != 0:
#         if remain != dp[raw-1][col]:
#             count = min(num[raw-1],col//weight[raw-1])
#             for k in range(1,count+1):
#                 if dp[raw][col] - k * value[raw-1] == dp[raw-1][col-k * weight[raw-1]]:
#                     remain -= k * value[raw-1]
#                     col -= k * weight[raw-1]
#                     goods[raw-1] = k
#         raw -= 1

#     print(goods)

# dp = solution(8, [1,2,2], [6,10,20], [10,5,2]) # max_weight,weight,value,num
# things(8, dp, [1,2,2], [6,10,20], [10,5,2])

import json
import copy

fp = open("./etc/sim_setting.json", 'r')
sim_setting = json.load(fp)
fp.close()
base = sim_setting['num_products'] * sim_setting['num_destinations']
for idx in range(5):
    temp_setting = copy.deepcopy(sim_setting)
    inc_pro = idx * 3
    inc_des = idx * 2
    temp_setting['num_products'] += inc_pro
    temp_setting['num_destinations'] += inc_des
    scale = (temp_setting['num_products'] * temp_setting['num_destinations']) / base
    temp_setting['low_capacity_compartments'] = int(temp_setting['low_capacity_compartments'] * scale)
    temp_setting['high_capacity_compartments'] = int(temp_setting['high_capacity_compartments'] * scale)
    print(temp_setting)