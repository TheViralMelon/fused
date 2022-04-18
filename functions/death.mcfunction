execute as @e[tag=fusedDeathWarp] at @p if score @s fusedID = @p fusedID run kill @s
summon marker ~ ~ ~ {Tags:["fusedDeathWarp"]}
scoreboard players operation @e[tag=fusedDeathWarp,limit=1,sort=nearest] fusedID = @s fusedID
particle minecraft:totem_of_undying ~ ~1 ~ 0.1 0.3 0.1 0.6 100 normal @a
gamerule showDeathMessages false
kill @s
tellraw @a [{"selector":"@s","color":"#86F723"},{"text":" was slain.","color":"#86F723","hoverEvent":{"action":"show_text","contents":[{"text":"Fused has an ability called 'repossession' that lets you teleport back to your death point when you get enough XP. In order for this to work, I need to prevent the player from dying, spawn an invisible entity for them to teleport back to, and then /kill them. However, since I'm using /kill, it'll always show the death message 'fell out of the world'. Since I can't actually show the death messaage of what actually killed you, since I prevented it in order to spawn the invisible entity, I use this custom 'was slain' death message instead. It's not the actual death, but it's better than 'fell out of the world'."}]}}]
gamerule showDeathMessages true