execute store result storage fused:uuid UUID0 int 1 run data get entity @s UUID[0]
execute store result storage fused:uuid UUID1 int 1 run data get entity @s UUID[1]
execute store result storage fused:uuid UUID2 int 1 run data get entity @s UUID[2]
execute store result storage fused:uuid UUID3 int 1 run data get entity @s UUID[3]
xp add @s -15 levels
playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 0.4 2
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 0.6 1.2
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 0.3 1.3
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 1 0
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.15 0.2
particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.4 0.2 0.8 15 force @a
particle minecraft:firework ~ ~1 ~ 0.2 0.4 0.2 0.05 30
particle minecraft:witch ~ ~1 ~ 0.2 0.4 0.2 0 10