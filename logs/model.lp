\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   + 13 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   + 20 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   + 14 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   + 27 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   + 24 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   + 27 replenishment_time <= 0
 capacity_constraint_0_compartments: 19 X[0,0,0] + 23 X[0,0,1]
   + 15 X[0,0,2] + 19 X[0,1,0] + 23 X[0,1,1] + 15 X[0,1,2] <= 890
 capacity_constraint_1_compartments: 19 X[1,0,0] + 23 X[1,0,1]
   + 15 X[1,0,2] + 19 X[1,1,0] + 23 X[1,1,1] + 15 X[1,1,2] <= 745
 capacity_constraint_2_compartments: 19 X[2,0,0] + 23 X[2,0,1]
   + 15 X[2,0,2] + 19 X[2,1,0] + 23 X[2,1,1] + 15 X[2,1,2] <= 819
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,1,0] X[0,1,1] X[0,1,2] X[1,0,0] X[1,0,1]
 X[1,0,2] X[1,1,0] X[1,1,1] X[1,1,2] X[2,0,0] X[2,0,1] X[2,0,2] X[2,1,0]
 X[2,1,1] X[2,1,2]
End
