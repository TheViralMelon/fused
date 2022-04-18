particle totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 0.3 27 force @a
particle flash ~ ~1 ~ 0 0 0 0 2 normal @a
effect give @s resistance 5 5 true
xp add @s -40 points
execute as @s at @e[tag=fusedDeathWarp] if score @s fusedID = @e[tag=fusedDeathWarp,limit=1,sort=nearest] fusedID run tp @s @e[tag=fusedDeathWarp,limit=1,sort=nearest]
execute as @s at @e[tag=fusedDeathWarp] if score @s fusedID = @e[tag=fusedDeathWarp,limit=1,sort=nearest] fusedID run kill @e[tag=fusedDeathWarp,limit=1,sort=nearest]
tag @s remove fusedCanRepo
tag @s remove fusedXPCheck
tag @s remove fusedMessaged