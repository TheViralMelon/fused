playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 0.2 0.7
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 0.8 1
playsound minecraft:entity.zombie.infect master @s ~ ~ ~ 1 0.7
particle minecraft:falling_dust lime_stained_glass ~ ~1 ~ 0.25 0.5 0.25 0.1 30 force @a
particle minecraft:enchanted_hit ~ ~1 ~ 0.2 0.4 0.2 1 70 normal @a
tellraw @s [{"text":"Your Magic Energy has been permanently upgraded by 2!","color":"green","bold":true}]