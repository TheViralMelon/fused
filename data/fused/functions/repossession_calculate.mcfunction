execute store result score @s fusedMeCounter run resource get @s fused:magic_energy
scoreboard players operation @s fusedMeCounter -= 10 fusedMana
scoreboard players operation @s fusedMeCounter *= 2 fusedMana
execute store result score @s fusedMeTransfer run data get entity @s Health
# tellraw @s {"score":{"objective":"fusedMeTransfer","name":"@s"}}
# tellraw @s {"score":{"objective":"fusedMeCounter","name":"@s"}}