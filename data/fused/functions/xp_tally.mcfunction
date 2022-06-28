execute store result score @s fusedXpCount run data get entity @s "Value"
execute at @p[tag=fusedFused] run resource operation @p fused:repossession_cost -= @s fusedXpCount
execute as @p[tag=fusedFused] store result score @s fusedTransmute run resource get @s fused:repossession_cost
title @p[tag=fusedFused,scores={fusedTransmute=0}] title ""
title @p[tag=fusedFused,scores={fusedTransmute=0}] subtitle [{"text":"Waiting for cooldown...","color":"dark_green","bold":false}]
scoreboard players set @p[tag=fusedFused] fusedTransmute 0
execute at @s run particle minecraft:dust_color_transition 0.75 1.0 0.5 1.0 0.0 1.0 0.0 ~ ~ ~ 0 0 0 0.0001 3 force @a
playsound minecraft:block.fire.extinguish neutral @a ~ ~ ~ 1 2
kill @s