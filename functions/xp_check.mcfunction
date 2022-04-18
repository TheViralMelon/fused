tag @s[level=4..,tag=fusedXPCheck] add fusedCanRepo
tellraw @s[level=4..,tag=fusedXPCheck,tag=!fusedMessaged] [{"text":"You have reached level 4, and can thus press ","color":"#86F723"},{"keybind":"key.loadToolbarActivator","color":"#86F723"},{"text":" (\"Load Toolbar Activator\" in Controls) to repossess your last body, teleporting you to your last death point (expires in 60 seconds)","color":"#86F723"}]
scoreboard players set @s[level=4..,tag=fusedXPCheck,tag=!fusedMessaged] fusedRepoTimer 32
tag @s[level=4..,tag=fusedXPCheck] add fusedMessaged
scoreboard players remove @s[scores={fusedRepoTimer=1..}] fusedRepoTimer 1
tag @s[scores={fusedRepoTimer=1}] remove fusedCanRepo
tag @s[scores={fusedRepoTimer=1}] remove fusedXPCheck
tag @s[scores={fusedRepoTimer=1}] remove fusedMessaged
tellraw @s[scores={fusedRepoTimer=1}] {"text":"Repossession has expired","color":"#86F723"}
execute as @s[scores={fusedRepoTimer=1}] run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 0.3 2
execute as @s[scores={fusedRepoTimer=1}] at @e[tag=fusedDeathWarp] if score @s fusedID = @e[tag=fusedDeathWarp,limit=1,sort=nearest] fusedID run kill @e[tag=fusedDeathWarp,limit=1,sort=nearest]
scoreboard players set @s[scores={fusedRepoTimer=1}] fusedRepoTimer 0