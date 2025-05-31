from modules import *
from datasource_input import *

print_df("Data Scene", Scn_df)
print_df("Data Location", Loc_df)
print_df("Data Talent", Tal_df)
print_df("Data Talent Cost by Scene", Tal_Cos_df)
print_df("Data Distance Each Scene", Scn_Dis_df)
print_df("Data Fuel Cost Each Scene", Fuel_Cost_df)
print_df("Data Total Cost Each Scene", Cost_df)

norm_Cost_df.columns = range(norm_Cost_df.shape[1])
norm_Cost_df = norm_Cost_df.reset_index()
norm_Cost_df.drop(["index"], inplace=True, axis=1)
print_df("Converted Cost_df", norm_Cost_df)
print_df("Normalization Data Total Cost Each Scene", norm_Cost_df)

scene_lists = scene_name

# PSO INIT
n = 100 # Max Iter
N = 25 # Swarm Size
d = len(scene_lists) # total of scene as the dimension
c1 = 2
c2 = 2

X_min = 0
X_max = 1

V_max = rd.uniform(X_min,X_max)
V_min = -V_max

# Storage_init
X_df = pd.DataFrame()

# Storage
Result = []

# Running PSO
Result = PSO_exe()
