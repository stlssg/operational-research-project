import time
import math

class AddingOneByOneHeu():
    def __init__(self, data):
        self.data = data
        self.state = []
        self.compartments = range(self.data['num_compartments']) # i
        self.destinations = range(self.data['num_destinations']) # j
        self.products = range(self.data['num_products']) # k
    
    def solve(self):
        start = time.time()
        
        self.demand_para = []
        for j in self.destinations:
            min_demand_des = min(self.data['demand'][j])
            temp = []
            for k in self.products:
                if min_demand_des == 0:
                    min_demand_des = 1
                temp.append(math.ceil(self.data['demand'][j][k] / min_demand_des))
            self.demand_para.append(temp)
           
        self.comFullOrNot = [False for i in self.compartments]
        self.proSatisfiedOrNot = []
        for j in self.destinations:
            for k in self.products:
                if int(self.data['demand'][j][k]) == 0:
                    self.proSatisfiedOrNot.append(True)
                else:
                    self.proSatisfiedOrNot.append(False)
        
        currentState = []
        for j in self.destinations:
            temp_des = []
            for i in self.compartments:
                temp_com = []
                for k in self.products:
                    temp_com.append(0)
                temp_des.append(temp_com)
            currentState.append(temp_des)
        self.state = currentState
        
        while True:
            if (sum(self.proSatisfiedOrNot) == len(self.proSatisfiedOrNot)) or (sum(self.comFullOrNot) == len(self.comFullOrNot)):
                break
            for j in self.destinations:
                for i in self.compartments:
                    if self.comFullOrNot[i]: continue
                    for k in self.products:
                        if (self.proSatisfiedOrNot[k + j * self.data['num_products']]) or (int(self.data["demand"][j][k]) == 0): continue
                        self.state[j][i][k] += 1
                        AddingOneByOneHeu.check_product(self, j, k)
                        AddingOneByOneHeu.check_compartments(self, i, j, k, 1)
        
        while True:
            if sum(self.comFullOrNot) == len(self.comFullOrNot):
                break      
            for j in self.destinations:
                for i in self.compartments:
                    if self.comFullOrNot[i]: continue
                    for k in self.products:
                        if (int(self.data["demand"][j][k]) == 0) or AddingOneByOneHeu.check_min_replenishment(self, j, k): continue
                        while True:
                            self.state[j][i][k] += self.demand_para[j][k]
                            temp_para = self.demand_para[j][k]
                            AddingOneByOneHeu.check_compartments(self, i, j, k, self.demand_para[j][k])
                            if self.comFullOrNot[i] or (temp_para == self.demand_para[j][k]):
                                break
                        
        of_heu = 100
        for j in self.destinations:
            for k in self.products:
                temp = 0
                for i in self.compartments:
                    temp += self.state[j][i][k]
                temp = temp / self.data['demand'][j][k]
                if temp < of_heu:
                    of_heu = temp
                
        end = time.time()
        comp_time = end - start
        
        return of_heu, self.state, comp_time
        
    def check_product(self, idx_j, idx_k):
        temp = 0
        for i in self.compartments: 
            temp += self.state[idx_j][i][idx_k]
        if temp >= self.data['demand'][idx_j][idx_k]:
            self.proSatisfiedOrNot[idx_k + idx_j * self.data['num_products']] = True
                
    def check_compartments(self, idx_i, idx_j, idx_k, para):
        temp = 0
        for j in self.destinations:
            for k in self.products:
                temp += self.state[j][idx_i][k] * self.data['size_package'][k]
        if (temp > self.data['capacity_compartments'][idx_i]) and (para == 1):
            self.comFullOrNot[idx_i] = True
            self.state[idx_j][idx_i][idx_k] -= 1
        elif (temp > self.data['capacity_compartments'][idx_i]) and (para > 1):
            self.demand_para[idx_j][idx_k] -= 1
            self.state[idx_j][idx_i][idx_k] -= para
            
    def check_min_replenishment(self, idx_j, idx_k):
        min_value = 100
        for j in self.destinations:
            for k in self.products:
                temp = 0
                for i in self.compartments:
                    temp += self.state[j][i][k]
                temp = temp / self.data['demand'][j][k]
                if temp <= min_value:
                    min_value = temp 
                    temp_j = j
                    temp_k = k
        if temp_j == idx_j and temp_k == idx_k:
            return False
        else:
            return True