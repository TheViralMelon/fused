scoreboard players operation @s fusedDmg -= @s fusedDmgA
scoreboard players add @s fusedMeCounter 1
execute if entity @s[scores={fusedMeCounter=..19}] run function fused:me_damage_adjust