import numpy as np
import time
import functools
import copy
import math
import random

class DP_Heu():
    def __init__(self, data):
        self.data = data
        self.t_lb = 0.0 # lower bound
        self.ite = 0 # iteration
        self.eps = 0.03 # ending condition
        self.compartments = range(self.data['num_compartments']) # i
        self.destinations = range(self.data['num_destinations']) # j
        self.products = range(self.data['num_products']) # k
    
    def solve(self):
        C_total = functools.reduce(lambda x, y: x+y, self.data["capacity_compartments"])
        sum_pk_djk = 0
        for k in range(self.data['num_products']):
            for j in range(self.data['num_destinations']):
                sum_pk_djk += self.data['size_package'][k] * self.data['demand'][j][k]
        self.t_ub = C_total / sum_pk_djk # upper bound with relaxation
        self.t_l = (self.t_lb + self.t_ub) / 2
        
        start = time.time()
        
        while self.t_ub - self.t_lb > self.eps:
            of, condition = DP_Heu.sub_algorithm(self, self.data)
            if condition == 'yes': # there exists a feasible solution
                self.t_lb = self.t_l
                final_of = of
            elif condition == 'no': # there's no feasible solutions
                self.t_ub = self.t_l
            self.t_l = (self.t_lb + self.t_ub) / 2
            self.ite += 1
                
        end = time.time()
        comp_time = end - start
        return final_of, comp_time
            
    def sub_algorithm(self, data_input):
        data = copy.deepcopy(data_input)
        D_jk = []
        for j in self.destinations:
            temp = []
            for k in self.products:
                temp.append(math.ceil(data['demand'][j][k] * self.t_l))
            D_jk.append(temp)
        D_k = []
        for k in self.products:
            D_k.append(sum([D_jk[j][k] for j in self.destinations]))
        idx = 0
        S_l = []
        D = 0
        for demand in D_k:
            S_l += [data['size_package'][idx] for i in range(demand)]
            idx += 1
            D += demand
        demand_total = D
        take = [0 for i in range(D)]
        
        sum_take = 0
        for c in data['capacity_compartments']:
            w = int(c)    
            n = D    
            listWV = [[0,0]]
            listTemp = []
            idx_temp = [-1]
            for idx in range(demand_total):
                if take[idx] == 0:
                    listTemp = [math.ceil(S_l[idx]), math.ceil(S_l[idx])]  
                    idx_temp.append(idx)
                    listWV.append(listTemp) 
                
            value = [[0 for i in range(w+1)] for j in range(n+1)]
            for i in range(1, n+1):
                for j in range(1, w+1):
                    if j < listWV[i][0]:    
                        value[i][j] = value[i-1][j] 
                    else:  
                        value[i][j] = max(value[i-1][j], value[i-1][j-listWV[i][0]]+listWV[i][1])

            i = n
            j = w
            listInfo = [0 for i in range(n+1)]
            while i>0:
                if value[i][j] > value[i-1][j]: 
                    listInfo[i] = 1
                    j = j - listWV[i][0]
                i -= 1
            listFlag = []
            for i in range(len(listInfo)):
                if listInfo[i] == 1:
                    listFlag.append(i-1)
                    take[idx_temp[i]] = 1
            
            D -= sum(take) 
            D += sum_take
            sum_take = sum(take)
        
        if D > 0:
            return self.t_l, 'no'
        elif D == 0:
            return self.t_l, 'yes'

    # def sub_algorithm(self, data_input):
    #     data = copy.deepcopy(data_input)
    #     D_jk = []
    #     for j in self.destinations:
    #         temp = []
    #         for k in self.products:
    #             temp.append(math.ceil(data['demand'][j][k] * self.t_l))
    #         D_jk.append(temp)
    #     D_k = []
    #     for k in self.products:
    #         D_k.append(sum([D_jk[j][k] for j in self.destinations]))
    #     num = D_k
    #     weight = [math.ceil(data['size_package'][k]) for k in self.products]
    #     value = copy.deepcopy(weight)
        
    #     for c in data['capacity_compartments']:
    #         max_weight = int(c)

    #         dp = np.zeros((len(weight)+1,max_weight+1),dtype=int)
            
    #         for i in range(1,len(weight)+1):
    #             for j in range(1,max_weight+1):
    #                 if weight[i-1] > j:
    #                     dp[i][j] = dp[i-1][j]
    #                 else:
    #                     count = min(num[i-1],j//weight[i-1])
    #                     dp[i][j] = dp[i-1][j]
    #                     for k in range(1,count+1):
    #                         temp = dp[i-1][j-k * weight[i-1]] + k * value[i-1]
    #                         if temp > dp[i][j]:
    #                             dp[i][j] = temp
            
    #         raw = len(weight)
    #         col = max_weight
    #         remain = dp[raw][col]
    #         goods = [0,0,0]

    #         while remain != 0:
    #             if remain != dp[raw-1][col]:
    #                 count = min(num[raw-1],col//weight[raw-1])
    #                 for k in range(1,count+1):
    #                     if dp[raw][col] - k * value[raw-1] == dp[raw-1][col-k * weight[raw-1]]:
    #                         remain -= k * value[raw-1]
    #                         col -= k * weight[raw-1]
    #                         goods[raw-1] = k
    #             raw -= 1
    
    #         for k in self.products:
    #             num[k] -= goods[k]
        
    #     if sum(num) > 0:
    #         return self.t_l, 'no'
    #     elif sum(num) == 0:
    #         return self.t_l, 'yes'