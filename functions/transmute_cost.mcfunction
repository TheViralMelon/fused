xp add @s[scores={fusedTransmute=1..},tag=!fusedAscended] -5 points
scoreboard players remove @s fusedTransmute 1
execute if entity @s[scores={fusedTransmute=1..}] run function fused:transmute_cost