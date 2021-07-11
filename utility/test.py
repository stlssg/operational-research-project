# data_item = ['map', 'compass', 'water', 'sandwich', 'glucose', 'tin', 'banana',
#              'apple', 'cheese', 'beer', 'suntan', 'camera', 'T', 'trousers',
#              'umbrella', 'w t', 'w o', 'note-case', 'sunglasses', 'towel',
#              'socks', 'book']
# data_weight = [9, 13, 153, 50, 15, 68, 27, 39, 23, 52, 11, 32, 24, 48, 73, 42,
#                43, 22, 7, 18, 4, 30]
# data_value = [150, 35, 200, 160, 60, 45, 60, 40, 30, 10, 70, 30, 15, 10, 40,
#               70, 75, 80, 20, 12, 50, 10]

# data_item = ['1','2','3','4']
# data_weight = [2,4,6,9]
# data_value = [10,10,12,18]

max_weight = 8
weight = [1,2,2]
value = [6,10,20]
num = [10,5,2]

data_item = [i for i in range(sum(num))]
data_weight = []
data_value = []
for idx in range(len(num)):
    for times in range(num[idx]):
        data_weight.append(weight[idx])
        data_value.append(value[idx])
print(data_weight)
print(data_value)

data_sorted = sorted(zip(data_item, data_weight, data_value), key=lambda x: x[2]//x[1], reverse=True)

max_weight = 8


class State(object):
    def __init__(self, level, benefit, weight, token):
        # token = list marking if a task is token. ex. [1, 0, 0] means
        # item0 token, item1 non-token, item2 non-token
        # available = list marking all tasks available, i.e. not explored yet
        self.level = level
        self.benefit = benefit
        self.weight = weight
        self.token = token
        self.available = self.token[:self.level]+[1]*(len(data_sorted)-level)
        self.ub = self.upperbound()

    def upperbound(self):  # define upperbound using fractional knaksack
        upperbound = 0  # initial upperbound
        # accumulated weight used to stop the upperbound summation
        weight_accumulate = 0
        for avail, (_, wei, val) in zip(self.available, data_sorted):
            if wei * avail <= max_weight - weight_accumulate:
                weight_accumulate += wei * avail
                upperbound += val * avail
            else:
                upperbound += val * (max_weight - weight_accumulate) / wei * avail
                break
        return upperbound

    def develop(self):
        level = self.level + 1
        _, weight, value = data_sorted[self.level]
        left_weight = self.weight + weight
        if left_weight <= max_weight:  # if not overweighted, give left child
            left_benefit = self.benefit + value
            left_token = self.token[:self.level]+[1]+self.token[level:]
            left_child = State(level, left_benefit, left_weight, left_token)
        else:
            left_child = None
        # anyway, give right child
        right_child = State(level, self.benefit, self.weight, self.token)
        return ([] if left_child is None else [left_child]) + [right_child]


Root = State(0, 0, 0, [0] * len(data_sorted))  # start with nothing
waiting_States = []  # list of States waiting to be explored
current_state = Root
while current_state.level < len(data_sorted):
    waiting_States.extend(current_state.develop())
    # sort the waiting list based on their upperbound
    waiting_States.sort(key=lambda x: x.ub)
    # explore the one with largest upperbound
    current_state = waiting_States.pop()
best_item = [item for tok, (item, _, _)
             in zip(current_state.token, data_sorted) if tok == 1]

print ("Total weight: ", current_state.weight)
print ("Total Value: ", current_state.benefit)
print ("Items:", best_item)

# import functools
# class solver():
#     def __init__(self, Items, capacity):
#         self.sortedItems = list(filter(lambda x: x.value > 0, Items))
#         self.sortedItems = sorted(self.sortedItems, key=lambda    x:float(x.weight)/float(x.value))
#         self.numItems = len(Items)
#         self.capacity = capacity
#         self.bestSolution = solution(0, self.capacity)

#     def isOptimisitcBetter(self, sol, newItemIdx):
#         newItem = self.sortedItems[newItemIdx]
#         rhs = (sol.value + (sol.capacity/newItem.weight)*newItem.value)
#         return rhs > self.bestSolution.value

#     def explore(self, sol, itemIndex):
#         if itemIndex < self.numItems:
#             if self.isOptimisitcBetter(sol, itemIndex):
#                 self.exploreLeft(sol, itemIndex)
#                 self.exploreRight(sol, itemIndex)

#     def exploreLeft(self, sol, itemIndex):
#         newItem = self.sortedItems[itemIndex]
#         thisSol = sol.copy()
#         if thisSol.addItem(newItem):
#             if thisSol.value > self.bestSolution.value:
#                 self.bestSolution = thisSol
#             self.explore(thisSol, itemIndex+1)

#     def exploreRight(self, sol, itemIndex):
#         self.explore(sol, itemIndex+1)

#     def solveWrapper(self):
#         self.explore(solution(0, self.capacity), 0)


# class solution():
#     def __init__(self, value, capacity, items=set()):
#         self.value, self.capacity = value, capacity
#         self.items = items.copy()

#     def copy(self):
#         return solution(self.value,  self.capacity, self.items)

#     def addItem(self, newItem):
#         remainingCap = self.capacity-newItem.weight
#         if remainingCap < 0:
#             return False
#         self.items.add(newItem)
#         self.capacity = remainingCap
#         self.value+=newItem.value
#         return True

# items = [[4,1], [1,1], [3,2], [2,3]]
# capacity = 12
# solver = solver(items, capacity)
# solver.solveWrapper()
# bestSol = solver.bestSolution

# import Queue

# def upper_bound(u, k, n, v, w):
#         if u.weight > k:
#             return 0
#         else:
#             bound = u.value
#             wt = u.weight
#             j = u.level 
#             while j < n and wt + w[j] <= k:
#                 bound += v[j]
#                 wt += w[j]
#                 j += 1
#             # fill knapsack with fraction of a remaining item
#             if j < n:
#                 bound += (k - wt) * float(v[j])/ w[j]
#             return bound


# def knapsack(items, capacity):
#         item_count = len(items)
#         v = [0]*item_count
#         w = [0]*item_count
#         # sort items by value to weight ratio
#         items = sorted(items, key=lambda k: float(k.value)/k.weight, reverse = True)
#         for i,item in enumerate(items, 0):
#             v[i] = int(item.value)
#             w[i] = int(item.weight)
#         q = Queue.Queue()
#         root = Node(0, 0, 0, 0.0,[])
#         root.bound = upper_bound(root, capacity, item_count, v, w)
#         q.put(root)
#         value = 0
#         taken = [0]*item_count
#         best = set()
#         while not q.empty():
#             c = q.get()
#             if c.bound > value:
#                 level = c.level+1
#             # check 'left' node (if item is added to knapsack)
#             left = Node(level,c.value + v[level-1], c.weight + w[level-1], 0.0, c.contains[:])
#             left.bound = upper_bound(left, capacity, item_count, v, w)
#             left.contains.append(level)
#             if left.weight <= capacity:
#                 if left.value > value:
#                     value = left.value
#                     best = set(left.contains)
#                 if left.bound > value:
#                     q.put(left)
#                 # check 'right' node (if items is not added to knapsack)   
#             right = Node(level,c.value, c.weight, 0.0, c.contains[:])
#             right.bound = upper_bound(right, capacity, item_count, v, w)
#             if right.weight <= capacity:
#                 if right.value > value:
#                     value = right.value
#                     best = set(right.contains)
#                 if right.bound > value:
#                     q.put(right)
#         for b in best:
#             taken[b-1] = 1
#         value = sum([i*j for (i,j) in zip(v,taken)])
#         return str(value)


# max_weight = 8
# weight = [1,2,2]
# value = [6,10,20]
# num = [10,5,2]
# weights = []
# values = []
# for idx in range(len(num)):
#     for times in range(num[idx]):
#         weights.append(weight[idx])
#         values.append(value[idx])
        
# upper_bound = 100000000
# sum_w = 0
# sum_v = 0
# sum_w_ = 0
# sum_v_ = 0
# node_1 = False
# node_2 = False
# for i in range(len(values)):
    
#     if not node_1:
#         sum_w += weights[i]
#         sum_v += values[i]
#         rest = max_weight - sum_w
#         if rest < weights[i+1]:
#             c_init = -(sum_v + values[i] / weights[i+1] * rest)
#             u_init = -sum_v
#             node_1 = True
            
#     if (i != 0) and (not node_2):
#         sum_w_ += weights[i]
#         sum_v_ += values[i]
#         rest = max_weight - sum_w_
#         if rest < weights[i+1]:
#             c_init_ = -(sum_v_ + values[i] / weights[i+1] * rest)
#             u_init_ = -sum_v_
#             node_2 = True
            
#     if node_1 and node_2:
#         break
    
# if u_init < upper_bound:
#     upper_bound = u_init
# if u_init_ < upper_bound:
#     upper_bound = u_init_
# if c_init < c_init_:
#     min_c = c_init
# else:
#     min_c = c_init_

# nodes = [[u_init, c_init], [u_init_, c_init_]]
# take = [[1], [0]]
# occupy = [weights[0], 0]
# profit = [values[0], 0]
# max_profit = -1
# min_c_temp = min_c
# upper_bound_temp = upper_bound
# step = 0

# while True:
#     idx = -1
#     step += 1
#     # finished = False
    
#     removed_list = []
#     length_old_nodes = len(nodes)
#     for node in nodes:
#         idx += 1
#         if idx == length_old_nodes:
#             break
        
#         future_loading = occupy[idx] + weights[len(take[idx])]
#         if node[1] > upper_bound:
#             # nodes.pop(idx)
#             # take.pop(idx)
#             # occupy.pop(idx)
#             # profit.pop(idx)
#             removed_list.append(idx)
        
#         elif (future_loading > max_weight) and (profit[idx] <= max_profit):
#             # nodes.pop(idx)
#             # take.pop(idx)
#             # occupy.pop(idx)
#             # profit.pop(idx)
#             removed_list.append(idx)
        
#         elif (node[1] == min_c) and (future_loading <= max_weight):
#             removed_list.append(idx)
#             # nodes.pop(idx)
#             removed_take = take[idx]
#             removed_occupy = occupy[idx]
#             removed_profit = profit[idx]
            
#             temp_take_y = removed_take.copy()
#             temp_take_n = removed_take.copy()
#             temp_take_y.append(1)
#             temp_take_n.append(0)
#             sum_w_y = 0
#             sum_v_y = 0
#             sum_w_n = 0
#             sum_v_n = 0
#             node1 = False
#             node2 = False
#             for i in range(len(weights)):
                
#                 if i+1 > len(temp_take_y):
#                     state_y = 1
#                     state_n = 1
#                 else:
#                     state_y = temp_take_y[i]
#                     state_n = temp_take_n[i]
                
#                 # case one, take the next item
#                 if (state_y == 1) and (not node1):
#                     sum_w_y += weights[i]
#                     sum_v_y += values[i]
#                     rest = max_weight - sum_w_y
#                     if rest < weights[i+1]:
#                         c_y = -(sum_v_y + values[i+1] / weights[i+1] * rest)
#                         u_y = -sum_v_y
#                         node1 = True
#                         idx_y = i
                
#                 # case two, not take the next item
#                 if (state_n == 1) and (not node2):
#                     sum_w_n += weights[i]
#                     sum_v_n += values[i]
#                     rest = max_weight - sum_w_n
#                     if rest < weights[i+1]:
#                         c_n = -(sum_v_n + values[i+1] / weights[i+1] * rest)
#                         u_n = -sum_v_n
#                         node2 = True
                
#                 if node1 and node2:
#                     break
            
#             if u_y < upper_bound:
#                 upper_bound_temp = u_y
#             if c_y < min_c:
#                 min_c_temp = c_y
#             if c_y <= upper_bound:
#                 nodes.append([u_y, c_y])
#                 take.append(temp_take_y)
#                 occupy.append(removed_occupy + weights[len(temp_take_y)-1])
#                 current_profit = removed_profit + values[len(temp_take_y)-1]
#                 profit.append(current_profit)
#                 if current_profit > max_profit:
#                     max_profit = current_profit 
            
#             if (u_n < upper_bound) and (u_n < u_y):
#                 upper_bound_temp = u_n
#             if (c_n < min_c) and (c_n < c_y):
#                 min_c_temp = c_n                     
#             if c_n <= upper_bound:
#                 nodes.append([u_n, c_n])
#                 take.append(temp_take_n)
#                 occupy.append(removed_occupy)
#                 profit.append(removed_profit)  
    
#     temp_nodes = []
#     temp_take = []
#     temp_occupy = []
#     temp_profict = []
#     for idx in range(len(nodes)):
#         if idx not in removed_list:
#             temp_nodes.append(nodes[idx])
#             temp_take.append(take[idx])
#             temp_occupy.append(occupy[idx])
#             temp_profict.append(profit[idx])
#         # nodes.pop(idx)
#         # take.pop(idx)
#         # occupy.pop(idx)
#         # profit.pop(idx)
#     nodes = temp_nodes.copy()
#     take = temp_take.copy()
#     occupy = temp_occupy.copy()
#     profit = temp_profict.copy()
#     min_c = min_c_temp
#     upper_bound = upper_bound_temp
    
#     if (len(nodes) == 1) or (step == len(weights)):
#         break

# print(take[0])
# print(profit[0])
# print(weights)
# print(values)
# print(max_weight)

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

# import json
# import copy

# fp = open("./etc/sim_setting.json", 'r')
# sim_setting = json.load(fp)
# fp.close()
# base = sim_setting['num_products'] * sim_setting['num_destinations']
# for idx in range(5):
#     temp_setting = copy.deepcopy(sim_setting)
#     inc_pro = idx * 3
#     inc_des = idx * 2
#     temp_setting['num_products'] += inc_pro
#     temp_setting['num_destinations'] += inc_des
#     scale = (temp_setting['num_products'] * temp_setting['num_destinations']) / base
#     temp_setting['low_capacity_compartments'] = int(temp_setting['low_capacity_compartments'] * scale)
#     temp_setting['high_capacity_compartments'] = int(temp_setting['high_capacity_compartments'] * scale)
#     print(temp_setting)