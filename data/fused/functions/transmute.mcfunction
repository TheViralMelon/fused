execute store result score @s fusedMeCounter run resource get @s fused:magic_energy
scoreboard players operation @s fusedMeCounter -= 20 fusedMana
scoreboard players operation @s fusedMeCounter *= -1 fusedMana
scoreboard players operation @s fusedMeCounter *= 20 fusedMana
resource operation @s fused:transmutation_cooldown += @s fusedMeCounter
scoreboard players operation @s fusedMeCounter /= 4 fusedMana
scoreboard players add @s fusedMeCounter 60
title @s actionbar [{"text":"+6","color":"red","bold":true},{"text":"❤  ","color":"red","bold":false},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"green","bold":false},{"text":"s cooldown","color":"green","bold":false}]
particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 3 force @a
particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 0.2 12 normal @a
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 0.8 2
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.3 1.2
scoreboard players set @s fusedTransmute 0