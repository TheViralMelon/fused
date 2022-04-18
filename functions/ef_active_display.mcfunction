title @s[tag=!fusedAscended] actionbar [{"text": "+1s E. Form duration","color":"gold","bold":true},{"text":"  -","color":"green","bold":false},{"score":{"name":"@s","objective":"fusedMeTransfer"},"color":"green","bold":false},{"text":"⏺ (Primary)","color":"green","bold":false}]
title @s[tag=fusedAscended] actionbar [{"text": "+1s E. Form duration","color":"green","bold":true},{"text":" (Primary)","color":"green","bold":false}]
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 0.2 3 normal @a
tag @s remove fusedMeCount
scoreboard players set @s fusedMeCounter 0
scoreboard players set @s fusedMeTransfer 0