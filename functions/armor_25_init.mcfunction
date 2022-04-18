execute store result score @s fusedMeTransfer run resource get @s fused:soul_edge_me
resource operation @s fused:armor_25_power = @s fusedMeTransfer
resource change @s fused:armor_25_power 2
scoreboard players set @s fusedMeTransfer 0
scoreboard players operation @s fusedDmgA /= 4 fusedMana
scoreboard players operation @s fusedMeCounter /= 4 fusedMana
title @s actionbar [{"text": "Armor increased by ","color":"gray","bold":true},{"score":{"name":"@s","objective":"fusedDmgA"},"color":"gray","bold":true},{"text":"!  Immune to Knockback","color":"gray","bold":true}]
title @s actionbar [{"text": "Armor toughness increased by ","color":"gray","bold":true},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"gray","bold":true},{"text":"!  Immune to Knockback","color":"gray","bold":true}]
title @s actionbar [{"text": "Armor increased by ","color":"gray","bold":true},{"score":{"name":"@s","objective":"fusedDmgA"},"color":"gray","bold":true},{"text":"!  Immune to Knockback","color":"gray","bold":true},{"text": "  Armor toughness increased by ","color":"gray","bold":true},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"gray","bold":true},{"text":"!","color":"gray","bold":true}]
execute positioned ~ ~1 ~ run particle minecraft:poof ^ ^ ^-0.3 0.2 0.3 0.2 0.1 10
playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.4 1.3
playsound minecraft:item.shield.block master @a ~ ~ ~ 1 1.3
function fused:armor_calculate
function fused:toughness_calculate
scoreboard players set @s fusedDmgA 0
scoreboard players set @s fusedMeCounter 0