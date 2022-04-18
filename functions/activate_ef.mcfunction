execute store result score @s[tag=!fusedMeCount] fusedMeCounter run resource get @s fused:magic_energy
scoreboard players operation @s[tag=!fusedMeCount] fusedMeCounter /= 2 fusedMana
tag @s add fusedMeCount
execute if entity @s[scores={fusedMeCounter=..9}] run resource change @s fused:ef_duration_cap 1
execute if entity @s[scores={fusedMeCounter=..9}] run scoreboard players add @s fusedMeCounter 1
execute if entity @s[scores={fusedMeCounter=..9}] run function fused:activate_ef

execute if entity @s[scores={fusedMeCounter=10..}] run tag @s remove fusedMeCount
execute if entity @s[scores={fusedMeCounter=10..}] run scoreboard players set @s fusedMeCounter 0