execute store result score @s fusedMeCounter run resource get @s fused:magic_energy
scoreboard players operation @s fusedMeCounter /= 2 fusedMana
scoreboard players add @s fusedTransmute 1
function fused:calculate_transmute
scoreboard players operation @s fusedMeCounter = @s fusedTransmute
scoreboard players operation @s fusedMeCounter *= 5 fusedMana
function fused:transmute_cost
title @s[tag=!fusedAscended] actionbar [{"text":"+6","color":"red","bold":true},{"text":"❤","color":"red","bold":false},{"text":"  -","color":"green","bold":false},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"green","bold":false},{"text":"⏺ (Secondary)","color":"green","bold":false}]
title @s[tag=fusedAscended] actionbar [{"text":"+6","color":"red","bold":true},{"text":"❤","color":"red","bold":false},{"text":" (Secondary)","color":"green","bold":false}]
particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 3 force @a
particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 0.2 12 normal @a
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 0.8 2
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.3 1.2
scoreboard players set @s fusedTransmute 0
scoreboard players set @s fusedMeCounter 0