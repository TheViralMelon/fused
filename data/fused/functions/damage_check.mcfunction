scoreboard players operation @s fusedDmg += @s fusedDmgA
scoreboard players operation @s fusedDmgA = @s fusedDmg
execute store result score @s fusedMeCounter run resource get @s fused:magic_energy
scoreboard players operation @s fusedDmgA /= 4 fusedMana
scoreboard players operation @s fusedDmgA *= 3 fusedMana
scoreboard players operation @s fusedDmgA /= 10 fusedMana
scoreboard players operation @s fusedDmgA /= 2 fusedMana
execute if entity @s[scores={fusedMeCounter=..19}] run function fused:me_damage_adjust
scoreboard players set @s fusedMeCounter 0
scoreboard players set @s fusedDmgA 0