\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   + 16 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   + 7 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   + 20 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   + 15 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   + 8 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   + 16 replenishment_time <= 0
 capacity_constraint_0_compartments: 18.27155652544053 X[0,0,0]
   + 23.43194958145922 X[0,0,1] + 20.27262292899674 X[0,0,2]
   + 18.27155652544053 X[0,1,0] + 23.43194958145922 X[0,1,1]
   + 20.27262292899674 X[0,1,2] <= 809.2545786388456
 capacity_constraint_1_compartments: 18.27155652544053 X[1,0,0]
   + 23.43194958145922 X[1,0,1] + 20.27262292899674 X[1,0,2]
   + 18.27155652544053 X[1,1,0] + 23.43194958145922 X[1,1,1]
   + 20.27262292899674 X[1,1,2] <= 838.2792302379588
 capacity_constraint_2_compartments: 18.27155652544053 X[2,0,0]
   + 23.43194958145922 X[2,0,1] + 20.27262292899674 X[2,0,2]
   + 18.27155652544053 X[2,1,0] + 23.43194958145922 X[2,1,1]
   + 20.27262292899674 X[2,1,2] <= 899.5380486724
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,1,0] X[0,1,1] X[0,1,2] X[1,0,0] X[1,0,1]
 X[1,0,2] X[1,1,0] X[1,1,1] X[1,1,2] X[2,0,0] X[2,0,1] X[2,0,2] X[2,1,0]
 X[2,1,1] X[2,1,2]
End
