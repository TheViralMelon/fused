execute if entity @s[scores={fusedTransmute=1}] run particle damage_indicator ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force @a
execute if entity @s[scores={fusedTransmute=2}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 1 force @a
execute if entity @s[scores={fusedTransmute=3}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 1 force @a
execute if entity @s[scores={fusedTransmute=3}] run particle damage_indicator ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force @a
execute if entity @s[scores={fusedTransmute=4}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 2 force @a
execute if entity @s[scores={fusedTransmute=5}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 2 force @a
execute if entity @s[scores={fusedTransmute=5}] run particle damage_indicator ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force @a
execute if entity @s[scores={fusedTransmute=6}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 3 force @a
execute if entity @s[scores={fusedTransmute=7}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 3 force @a
execute if entity @s[scores={fusedTransmute=7}] run particle damage_indicator ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force @a
execute if entity @s[scores={fusedTransmute=8}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 4 force @a
execute if entity @s[scores={fusedTransmute=9}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 4 force @a
execute if entity @s[scores={fusedTransmute=9}] run particle damage_indicator ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force @a
execute if entity @s[scores={fusedTransmute=10}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 5 force @a
advancement grant @s[scores={fusedTransmute=10}] only fused:souledge_10hp
execute if entity @s[scores={fusedTransmute=1..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 0.5
execute if entity @s[scores={fusedTransmute=1..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 0.5
execute store result score @s fusedMeCounter run resource get @s fused:ef_active_duration
execute if entity @s[scores={fusedMeCounter=1..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 0.5
advancement grant @s[scores={fusedMeCounter=1..,fusedTransmute=1..}] only fused:ef_lifesteal
execute if entity @s[scores={fusedTransmute=1..,fusedMeCounter=0}] run title @s actionbar [{"text":"+","color":"red","bold":true},{"score":{"name":"@s","objective":"fusedTransmute"},"color":"red","bold":true},{"text":"❤","color":"red","bold":false}]
execute if entity @s[scores={fusedTransmute=1..,fusedMeCounter=1..}] run title @s actionbar [{"text":"+","color":"green","bold":true},{"score":{"name":"@s","objective":"fusedTransmute"},"color":"green","bold":true},{"text":"❤ (Increased by E. Form)","color":"green","bold":false}]
scoreboard players set @s fusedTransmute 0
scoreboard players set @s fusedMeCounter 0