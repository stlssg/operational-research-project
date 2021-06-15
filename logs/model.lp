\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   + 12 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   + 13 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   + 16 replenishment_time <= 0
 time_constraint_0_3_for_minimum: - X[0,0,3] - X[1,0,3] - X[2,0,3]
   + 14 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   + 13 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   + 4 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   + 17 replenishment_time <= 0
 time_constraint_1_3_for_minimum: - X[0,1,3] - X[1,1,3] - X[2,1,3]
   + replenishment_time <= 0
 time_constraint_2_0_for_minimum: - X[0,2,0] - X[1,2,0] - X[2,2,0]
   + 20 replenishment_time <= 0
 time_constraint_2_1_for_minimum: - X[0,2,1] - X[1,2,1] - X[2,2,1]
   + 16 replenishment_time <= 0
 time_constraint_2_2_for_minimum: - X[0,2,2] - X[1,2,2] - X[2,2,2]
   + 18 replenishment_time <= 0
 time_constraint_2_3_for_minimum: - X[0,2,3] - X[1,2,3] - X[2,2,3]
   + 11 replenishment_time <= 0
 time_constraint_3_0_for_minimum: - X[0,3,0] - X[1,3,0] - X[2,3,0]
   + 9 replenishment_time <= 0
 time_constraint_3_1_for_minimum: - X[0,3,1] - X[1,3,1] - X[2,3,1]
   + 17 replenishment_time <= 0
 time_constraint_3_2_for_minimum: - X[0,3,2] - X[1,3,2] - X[2,3,2]
   + 20 replenishment_time <= 0
 time_constraint_3_3_for_minimum: - X[0,3,3] - X[1,3,3] - X[2,3,3]
   + 10 replenishment_time <= 0
 capacity_constraint_0_compartments: 18.0233257263184 X[0,0,0]
   + 16.46755890817113 X[0,0,1] + 15.92338594768798 X[0,0,2]
   + 16.86260211377671 X[0,0,3] + 18.0233257263184 X[0,1,0]
   + 16.46755890817113 X[0,1,1] + 15.92338594768798 X[0,1,2]
   + 16.86260211377671 X[0,1,3] + 18.0233257263184 X[0,2,0]
   + 16.46755890817113 X[0,2,1] + 15.92338594768798 X[0,2,2]
   + 16.86260211377671 X[0,2,3] + 18.0233257263184 X[0,3,0]
   + 16.46755890817113 X[0,3,1] + 15.92338594768798 X[0,3,2]
   + 16.86260211377671 X[0,3,3] <= 783.4044009405148
 capacity_constraint_1_compartments: 18.0233257263184 X[1,0,0]
   + 16.46755890817113 X[1,0,1] + 15.92338594768798 X[1,0,2]
   + 16.86260211377671 X[1,0,3] + 18.0233257263184 X[1,1,0]
   + 16.46755890817113 X[1,1,1] + 15.92338594768798 X[1,1,2]
   + 16.86260211377671 X[1,1,3] + 18.0233257263184 X[1,2,0]
   + 16.46755890817113 X[1,2,1] + 15.92338594768798 X[1,2,2]
   + 16.86260211377671 X[1,2,3] + 18.0233257263184 X[1,3,0]
   + 16.46755890817113 X[1,3,1] + 15.92338594768798 X[1,3,2]
   + 16.86260211377671 X[1,3,3] <= 844.0648986884316
 capacity_constraint_2_compartments: 18.0233257263184 X[2,0,0]
   + 16.46755890817113 X[2,0,1] + 15.92338594768798 X[2,0,2]
   + 16.86260211377671 X[2,0,3] + 18.0233257263184 X[2,1,0]
   + 16.46755890817113 X[2,1,1] + 15.92338594768798 X[2,1,2]
   + 16.86260211377671 X[2,1,3] + 18.0233257263184 X[2,2,0]
   + 16.46755890817113 X[2,2,1] + 15.92338594768798 X[2,2,2]
   + 16.86260211377671 X[2,2,3] + 18.0233257263184 X[2,3,0]
   + 16.46755890817113 X[2,3,1] + 15.92338594768798 X[2,3,2]
   + 16.86260211377671 X[2,3,3] <= 700.022874963469
 demand_rate_constraint_0_0_for_total_delivery_quantity: - X[0,0,0]
   - X[1,0,0] - X[2,0,0] + 12 replenishment_time <= 0
 demand_rate_constraint_0_1_for_total_delivery_quantity: - X[0,0,1]
   - X[1,0,1] - X[2,0,1] + 13 replenishment_time <= 0
 demand_rate_constraint_0_2_for_total_delivery_quantity: - X[0,0,2]
   - X[1,0,2] - X[2,0,2] + 16 replenishment_time <= 0
 demand_rate_constraint_0_3_for_total_delivery_quantity: - X[0,0,3]
   - X[1,0,3] - X[2,0,3] + 14 replenishment_time <= 0
 demand_rate_constraint_1_0_for_total_delivery_quantity: - X[0,1,0]
   - X[1,1,0] - X[2,1,0] + 13 replenishment_time <= 0
 demand_rate_constraint_1_1_for_total_delivery_quantity: - X[0,1,1]
   - X[1,1,1] - X[2,1,1] + 4 replenishment_time <= 0
 demand_rate_constraint_1_2_for_total_delivery_quantity: - X[0,1,2]
   - X[1,1,2] - X[2,1,2] + 17 replenishment_time <= 0
 demand_rate_constraint_1_3_for_total_delivery_quantity: - X[0,1,3]
   - X[1,1,3] - X[2,1,3] + replenishment_time <= 0
 demand_rate_constraint_2_0_for_total_delivery_quantity: - X[0,2,0]
   - X[1,2,0] - X[2,2,0] + 20 replenishment_time <= 0
 demand_rate_constraint_2_1_for_total_delivery_quantity: - X[0,2,1]
   - X[1,2,1] - X[2,2,1] + 16 replenishment_time <= 0
 demand_rate_constraint_2_2_for_total_delivery_quantity: - X[0,2,2]
   - X[1,2,2] - X[2,2,2] + 18 replenishment_time <= 0
 demand_rate_constraint_2_3_for_total_delivery_quantity: - X[0,2,3]
   - X[1,2,3] - X[2,2,3] + 11 replenishment_time <= 0
 demand_rate_constraint_3_0_for_total_delivery_quantity: - X[0,3,0]
   - X[1,3,0] - X[2,3,0] + 9 replenishment_time <= 0
 demand_rate_constraint_3_1_for_total_delivery_quantity: - X[0,3,1]
   - X[1,3,1] - X[2,3,1] + 17 replenishment_time <= 0
 demand_rate_constraint_3_2_for_total_delivery_quantity: - X[0,3,2]
   - X[1,3,2] - X[2,3,2] + 20 replenishment_time <= 0
 demand_rate_constraint_3_3_for_total_delivery_quantity: - X[0,3,3]
   - X[1,3,3] - X[2,3,3] + 10 replenishment_time <= 0
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,0,3] X[0,1,0] X[0,1,1] X[0,1,2] X[0,1,3]
 X[0,2,0] X[0,2,1] X[0,2,2] X[0,2,3] X[0,3,0] X[0,3,1] X[0,3,2] X[0,3,3]
 X[1,0,0] X[1,0,1] X[1,0,2] X[1,0,3] X[1,1,0] X[1,1,1] X[1,1,2] X[1,1,3]
 X[1,2,0] X[1,2,1] X[1,2,2] X[1,2,3] X[1,3,0] X[1,3,1] X[1,3,2] X[1,3,3]
 X[2,0,0] X[2,0,1] X[2,0,2] X[2,0,3] X[2,1,0] X[2,1,1] X[2,1,2] X[2,1,3]
 X[2,2,0] X[2,2,1] X[2,2,2] X[2,2,3] X[2,3,0] X[2,3,1] X[2,3,2] X[2,3,3]
End
