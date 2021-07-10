\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   + 12 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   + 14 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   + 5 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   + 17 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   + 23 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   + 10 replenishment_time <= 0
 capacity_constraint_0_compartments: 23 X[0,0,0] + 15 X[0,0,1]
   + 16 X[0,0,2] + 23 X[0,1,0] + 15 X[0,1,1] + 16 X[0,1,2] <= 154
 capacity_constraint_1_compartments: 23 X[1,0,0] + 15 X[1,0,1]
   + 16 X[1,0,2] + 23 X[1,1,0] + 15 X[1,1,1] + 16 X[1,1,2] <= 128
 capacity_constraint_2_compartments: 23 X[2,0,0] + 15 X[2,0,1]
   + 16 X[2,0,2] + 23 X[2,1,0] + 15 X[2,1,1] + 16 X[2,1,2] <= 142
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,1,0] X[0,1,1] X[0,1,2] X[1,0,0] X[1,0,1]
 X[1,0,2] X[1,1,0] X[1,1,1] X[1,1,2] X[2,0,0] X[2,0,1] X[2,0,2] X[2,1,0]
 X[2,1,1] X[2,1,2]
End
