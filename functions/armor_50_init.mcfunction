execute store result score @s fusedMeTransfer run resource get @s fused:soul_edge_me
resource operation @s fused:armor_50_power = @s fusedMeTransfer
resource change @s fused:armor_50_power 2
scoreboard players set @s fusedMeTransfer 0
scoreboard players operation @s fusedDmgA /= 2 fusedMana
scoreboard players operation @s fusedMeCounter /= 2 fusedMana
title @s actionbar [{"text": "Armor increased by ","color":"light_gray","bold":true},{"score":{"name":"@s","objective":"fusedDmgA"},"color":"light_gray","bold":true},{"text":"!  Immune to Knockback","color":"light_gray","bold":true}]
title @s actionbar [{"text": "Armor toughness increased by ","color":"light_gray","bold":true},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"light_gray","bold":true},{"text":"!  Immune to Knockback","color":"light_gray","bold":true}]
title @s actionbar [{"text": "Armor increased by ","color":"light_gray","bold":true},{"score":{"name":"@s","objective":"fusedDmgA"},"color":"light_gray","bold":true},{"text":"!","color":"light_gray","bold":true},{"text": "  Armor toughness increased by ","color":"light_gray","bold":true},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"light_gray","bold":true},{"text":"!  Immune to Knockback","color":"light_gray","bold":true}]
execute positioned ~ ~1 ~ run particle minecraft:poof ^ ^ ^-0.3 0.2 0.3 0.2 0.1 10
execute positioned ~ ~1 ~ run particle minecraft:sweep_attack ^ ^ ^-0.1 0.2 0.4 0.2 0.1 5 force @a
playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.4 1.3
playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 1 1.2
function fused:armor_calculate
function fused:toughness_calculate
scoreboard players set @s fusedDmgA 0
scoreboard players set @s fusedMeCounter 0