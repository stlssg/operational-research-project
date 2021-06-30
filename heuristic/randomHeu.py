import numpy as np
import time

class RandomHeu():
    def __init__(self, data):
        self.data = data
    
    def solve(self):
        start = time.time()
        
        for seed in range(0,10001):
            min_of = 10
            
            demand_all = [0 for i in range(0, self.data['num_products'])]
            demand_all = np.array(demand_all, dtype = float)
            for i in range(0, self.data['num_destinations']):
                demand_all += self.data['demand'][i]
            demand_all = [np.random.randint(int(i), int(i * 3 + 1)) for i in demand_all]
            # print(demand_all)
            
            nums = []
            for demand in demand_all:
                total = demand
                temp = []
                for i in range(self.data['num_destinations'] * self.data['num_compartments']-1):
                    if i == 0:
                        val = np.random.randint(0, int(total / 2))
                    else:
                        val = np.random.randint(0, total)
                    temp.append(val)
                    total -= val
                temp.append(total)
                nums.append(temp)
            # print(nums)
            
            sol_heu = []
            for j in range(self.data['num_destinations']):
                temp_des = []
                for i in range(self.data['num_compartments']):
                    temp_com = []
                    for k in range(self.data['num_products']):
                        temp_com.append(nums[k][i + self.data['num_compartments'] * j])
                    temp_des.append(temp_com)
                sol_heu.append(temp_des)
            # print(sol_heu)
            
            check = True
            for i in range(self.data['num_compartments']):
                volume = 0
                for j in range(self.data['num_destinations']):
                    for k in range(self.data['num_products']):
                        volume += sol_heu[j][i][k] * self.data['size_package'][k]
                if volume > self.data['capacity_compartments'][i]:
                    check = False
                    break
            if check:
                demand_required = []
                for k in range(self.data['num_products']):
                    temp = 0
                    for j in range(self.data['num_destinations']):
                        temp += self.data['demand'][j][k]
                    demand_required.append(temp)
                of_heu = min([demand_all[i] / demand_required[i] for i in range(self.data['num_products'])])
                if of_heu <= min_of:
                    min_of = of_heu
                
        end = time.time()
        comp_time = end - start
        return min_of, sol_heu, comp_time