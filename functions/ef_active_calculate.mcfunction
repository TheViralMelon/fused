execute store result score @s[tag=!fusedMeCount] fusedMeCounter run resource get @s fused:magic_energy
scoreboard players operation @s[tag=!fusedMeCount] fusedMeCounter /= 2 fusedMana
xp add @s[tag=!fusedMeCount,tag=!fusedAscended] -11 points
scoreboard players add @s[tag=!fusedMeCount] fusedMeTransfer 11
tag @s add fusedMeCount
xp add @s[scores={fusedMeCounter=..10},tag=!fusedAscended] -1 points
scoreboard players add @s[scores={fusedMeCounter=..10}] fusedMeTransfer 1
scoreboard players add @s[scores={fusedMeCounter=..10}] fusedMeCounter 1
execute if entity @s[scores={fusedMeCounter=..10}] run function fused:ef_active_calculate