import numpy as np
import time
import functools
import copy
import math

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
        # start = time.time()
        
        # C_total = functools.reduce(lambda x, y: x+y, self.data["capacity_compartments"])
        # sum_pk_djk = 0
        # for k in range(self.data['num_products']):
        #     for j in range(self.data['num_destinations']):
        #         sum_pk_djk += self.data['size_package'][k] * self.data['demand'][j][k]
        # self.t_ub = C_total / sum_pk_djk # upper bound with relaxation
        # self.t_l = (self.t_lb + self.t_ub) / 2
        
        # while self.t_ub - self.t_lb > self.eps:
        #     of, sol_x, condition = DP_Heu.sub_algorithm(self, self.data)
        #     if condition == 'yes': # there exists a feasible solution
        #         self.t_lb = self.t_l
        #         final_of = of
        #         final_sol = sol_x
        #     elif condition == 'no': # there's no feasible solutions
        #         self.t_ub = self.t_l
        #     self.t_l = (self.t_lb + self.t_ub) / 2
        #     self.ite += 1
                
        # end = time.time()
        # comp_time = end - start
        # return final_of, final_sol, comp_time
        self.t_l = 1.2
        DP_Heu.sub_algorithm(self, self.data)
        
    
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
        take = [0 for i in range(D)]
        # print(S_l)
        
        for c in data['capacity_compartments']:
            w = int(c)    
            n = D    
            listWV = [[0,0]]
            listTemp = []
            idx_temp = []
            for idx in range(D):
                if take[idx] == 0:
                    listTemp = [math.ceil(S_l[idx]), math.ceil(S_l[idx])]  
                    idx_temp.append(idx)
                    listWV.append(listTemp) 
            # print(listWV)
                
            value = [[0 for i in range(w+1)] for j in range(n+1)]
            for i in range(1, n+1):
                for j in range(1, w+1):
                    if j < listWV[i][0]:    
                        value[i][j] = value[i-1][j] 
                    else:  
                        value[i][j] = max(value[i-1][j], value[i-1][j-listWV[i][0]]+listWV[i][1])
            # print(value[n][w])

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
                    listFlag.append(i)
                    take[idx_temp[i]] = 1
            # print(listFlag)
            
            D -= sum(take)
            
        print(sum(take))
        print(D)
        
            