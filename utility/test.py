w = 10    #背包大小
n = 5    #物品个数
listWV = [[0,0]]
# listTemp = []
# for i in range(n):
#     listTemp = list(map(int, input().split()))  #借助临时list每次新增物品对应的list加入到listWV中
#     listWV.append(listTemp) #依次输入每个物品的重量与价值
# print(listWV)
listWV += [[2,6],[5,3],[4,5],[2,4],[3,6]]
    
# 建立价值数组，初始值均为0，目的是为了在value[0][j]与value[i][0]的情况为0，毕竟不放入物品或者背包容量为0的情况下，背包中的价值肯定为0，
value = [[0 for i in range(w+1)] for j in range(n+1)]
for i in range(1, n+1):
    for j in range(1, w+1):
        if j < listWV[i][0]:    #若物品不能放到背包中
            value[i][j] = value[i-1][j] #价值与之前相同
        else:   #物品可以放到背包中，最大价值在两者之中取
            value[i][j] = max(value[i-1][j], value[i-1][j-listWV[i][0]]+listWV[i][1])
print(value[n][w])

# 打印放入的物品情况，需要遍历value数组
i = n
j = w
listInfo = [0 for i in range(n+1)]
while i>0:
    if value[i][j] > value[i-1][j]: #若在背包容量相同的情况下，后一个物品对应的背包价值大于了前一个物品对应的背包价值，那么说明第i个物品一定放入了背包
        listInfo[i] = 1
        j = j - listWV[i][0]
    i -= 1
listFlag = []
for i in range(len(listInfo)):
    if listInfo[i] == 1:
        listFlag.append(i)
print(listFlag)