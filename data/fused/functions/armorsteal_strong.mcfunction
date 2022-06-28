title @s actionbar [{"text":"Armor reduced by 50%!  Movement speed reduced by 20%!  Shields disabled!","bold":true,"color":"green"}]
execute store result score @p[tag=fusedArmor50] fusedTransmute run attribute @s minecraft:generic.armor get
execute store result score @p[tag=fusedArmor50] fusedMeCounter run attribute @s minecraft:generic.armor_toughness get
power grant @p[tag=fusedArmor50] fused:armor_50 fused:hit_10