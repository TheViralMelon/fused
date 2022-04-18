execute if entity @s[scores={fusedTransmute=1}] run particle damage_indicator ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force @a
execute if entity @s[scores={fusedTransmute=2}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 1 force @a
execute if entity @s[scores={fusedTransmute=3}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 1 force @a
execute if entity @s[scores={fusedTransmute=3}] run particle damage_indicator ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force @a
execute if entity @s[scores={fusedTransmute=4}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 2 force @a
execute if entity @s[scores={fusedTransmute=5}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 2 force @a
execute if entity @s[scores={fusedTransmute=5}] run particle damage_indicator ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force @a
execute if entity @s[scores={fusedTransmute=6}] run particle heart ~ ~0.5 ~ 0.25 0.25 0.25 1 3 force @a
execute if entity @s[scores={fusedTransmute=1..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 0.5
execute if entity @s[scores={fusedTransmute=2..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 0.5
execute if entity @s[scores={fusedTransmute=3..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 0.5
execute if entity @s[scores={fusedTransmute=4..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 0.5
execute if entity @s[scores={fusedTransmute=5..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 0.5
execute if entity @s[scores={fusedTransmute=6..}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.5 0.5
execute store result score @s fusedMeCounter run resource get @s fused:ef_duration_dura
execute if entity @s[scores={fusedTransmute=1..,fusedMeCounter=0}] run title @s actionbar [{"text":"+","color":"red","bold":true},{"score":{"name":"@s","objective":"fusedTransmute"},"color":"red","bold":true},{"text":"❤","color":"red","bold":false}]
execute if entity @s[scores={fusedTransmute=1..,fusedMeCounter=1..}] run title @s actionbar [{"text":"+","color":"green","bold":true},{"score":{"name":"@s","objective":"fusedTransmute"},"color":"green","bold":true},{"text":"❤ (Increased by E. Form)","color":"green","bold":false}]
scoreboard players set @s fusedTransmute 0
scoreboard players set @s fusedMeCounter 0