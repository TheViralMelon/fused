scoreboard players add @s fusedTransmute 1
scoreboard players add @s fusedMeCounter 1
execute unless entity @s[scores={fusedMeCounter=11..}] run function fused:calculate_transmute