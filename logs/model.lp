\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   + 11 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   + 15 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   + 18 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   + 10 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   + 15 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   + 16 replenishment_time <= 0
 capacity_constraint_0_compartments: 23.22897550138887 X[0,0,0]
   + 22.50331837885425 X[0,0,1] + 20.67945569894981 X[0,0,2]
   + 23.22897550138887 X[0,1,0] + 22.50331837885425 X[0,1,1]
   + 20.67945569894981 X[0,1,2] <= 719.4738519591718
 capacity_constraint_1_compartments: 23.22897550138887 X[1,0,0]
   + 22.50331837885425 X[1,0,1] + 20.67945569894981 X[1,0,2]
   + 23.22897550138887 X[1,1,0] + 22.50331837885425 X[1,1,1]
   + 20.67945569894981 X[1,1,2] <= 855.2997442634754
 capacity_constraint_2_compartments: 23.22897550138887 X[2,0,0]
   + 22.50331837885425 X[2,0,1] + 20.67945569894981 X[2,0,2]
   + 23.22897550138887 X[2,1,0] + 22.50331837885425 X[2,1,1]
   + 20.67945569894981 X[2,1,2] <= 766.6809199856084
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,1,0] X[0,1,1] X[0,1,2] X[1,0,0] X[1,0,1]
 X[1,0,2] X[1,1,0] X[1,1,1] X[1,1,2] X[2,0,0] X[2,0,1] X[2,0,2] X[2,1,0]
 X[2,1,1] X[2,1,2]
End
