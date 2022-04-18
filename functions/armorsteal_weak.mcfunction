title @s actionbar [{"text":"Armor reduced by 25%!  Movement speed reduced by 10%","bold":true,"color":"dark_green"}]
execute store result score @p[tag=fusedArmor25] fusedDmgA run attribute @s minecraft:generic.armor get
execute store result score @p[tag=fusedArmor25] fusedMeCounter run attribute @s minecraft:generic.armor_toughness get
power grant @p[tag=fusedArmor25] fused:armor_25 fused:hit_5