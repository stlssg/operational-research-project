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
        
        # define how much to load for a certain product based on the minimum of this destination in the second stage
        self.demand_para = []
        for j in self.destinations:
            min_demand_des = min(self.data['demand'][j])
            temp = []
            for k in self.products:
                if min_demand_des == 0:
                    min_demand_des = 1
                temp.append(math.ceil(self.data['demand'][j][k] / min_demand_des))
            self.demand_para.append(temp)
           
        self.comFullOrNot = [False for i in self.compartments] # a list containg bool elements to indicate whether a compartment is full or not
        self.comFull4Pro = [[0 for k in self.products] for i in self.compartments] # a 2-D list indicating whether a compartment can fit a certain product
        self.proSatisfiedOrNot = [] # a list containg bool elements to indicate whether a product demand is satisfied or not for a destination
        for j in self.destinations:
            for k in self.products:
                if int(self.data['demand'][j][k]) == 0:
                    self.proSatisfiedOrNot.append(True)
                else:
                    self.proSatisfiedOrNot.append(False)
        
        currentState = [] # store the loading condition for comparments
        for j in self.destinations:
            temp_des = []
            for i in self.compartments:
                temp_com = []
                for k in self.products:
                    temp_com.append(0)
                temp_des.append(temp_com)
            currentState.append(temp_des)
        self.state = currentState
        
        # 1st stage, loading just one
        while True:
            if (sum(self.proSatisfiedOrNot) == len(self.proSatisfiedOrNot)) or (sum(self.comFullOrNot) == len(self.comFullOrNot)):
                break
            for j in self.destinations:
                for i in self.compartments:
                    if self.comFullOrNot[i]: continue # if the compartment is full, then skip
                    for k in self.products:
                        # if demand for a product is respected or the demand is 0, then skip
                        if (self.proSatisfiedOrNot[k + j * self.data['num_products']]) or (int(self.data["demand"][j][k]) == 0): continue 
                        self.state[j][i][k] += 1 # load one
                        # check the product demand satisfication condition and compartment condition
                        AddingOneByOneHeu.check_product(self, j, k)
                        AddingOneByOneHeu.check_compartments(self, i, j, k, 1)
        
        # 2nd stage, laoding more
        while True:
            if sum(self.comFullOrNot) == len(self.comFullOrNot):
                break # all compartments are full, then finish
            for j in self.destinations:
                for i in self.compartments:
                    if self.comFullOrNot[i]: continue
                    for k in self.products:
                        if self.comFull4Pro[i][k] == 1: break
                        if (int(self.data["demand"][j][k]) == 0) or AddingOneByOneHeu.check_min_replenishment(self, j, k): continue
                        while True:
                            self.state[j][i][k] += self.demand_para[j][k] # laod the corresponding amount
                            temp_para = self.demand_para[j][k]
                            AddingOneByOneHeu.check_compartments(self, i, j, k, self.demand_para[j][k])
                            if self.comFullOrNot[i] or (temp_para == self.demand_para[j][k]):
                                break # keep loading with decreasing amount of certain product until it loads succesfully or reduce to 1
                    
        # calculate and output results    
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
        
    # check whether a product is satisfied or not
    def check_product(self, idx_j, idx_k):
        temp = 0
        for i in self.compartments: 
            temp += self.state[idx_j][i][idx_k]
        if temp >= self.data['demand'][idx_j][idx_k]:
            self.proSatisfiedOrNot[idx_k + idx_j * self.data['num_products']] = True
    
    # check whether a compartment is full or not      
    def check_compartments(self, idx_i, idx_j, idx_k, para):
        temp = 0
        for j in self.destinations:
            for k in self.products:
                temp += self.state[j][idx_i][k] * self.data['size_package'][k]
        if (temp > self.data['capacity_compartments'][idx_i]) and (para == 1):
            self.comFull4Pro[idx_i][idx_k] = 1
            self.comFullOrNot[idx_i] = True # if adding amount reaches 1, then it's full, otherwise, keep reducing the amount
            self.state[idx_j][idx_i][idx_k] -= 1
        elif (temp > self.data['capacity_compartments'][idx_i]) and (para > 1):
            self.demand_para[idx_j][idx_k] -= 1
            self.state[idx_j][idx_i][idx_k] -= para
    
    # check the current minimum and only load this one    
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