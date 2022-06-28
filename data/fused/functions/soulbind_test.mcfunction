# Not implemented in the actual origin. Only usable manually in order to test Soulbinding, as I suspect it may have slightly different behavior on servers and don't want it to bug out.

data remove storage fused:uuid UUID0
data remove storage fused:uuid UUID1
data remove storage fused:uuid UUID2
data remove storage fused:uuid UUID3
clear TheViralMelon minecraft:wooden_hoe{fusedCatalystCount:1}
clear TheViralMelon minecraft:wooden_hoe{fusedCatalystCount:2}

give TheViralMelon wooden_hoe{Enchantments:[{id:"minecraft:efficiency",lvl:5}]}
xp add TheViralMelon 15 levels
give TheViralMelon minecraft:rabbit_foot