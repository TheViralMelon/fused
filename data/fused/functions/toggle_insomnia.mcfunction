scoreboard players set @s toggleinsomnia 0
scoreboard players enable @s toggleinsomnia
tag @s[tag=fusedResetInsomnia] add fusedEnableInsomnia
tellraw @s[tag=fusedResetInsomnia] {"text":"Insomnia enabled","color":"light_purple"}
tag @s[tag=fusedResetInsomnia] remove fusedResetInsomnia
tellraw @s[tag=!fusedResetInsomnia,tag=!fusedEnableInsomnia] {"text":"Insomnia disabled","color":"red"}
tag @s[tag=!fusedResetInsomnia,tag=!fusedEnableInsomnia] add fusedResetInsomnia
tag @s remove fusedEnableInsomnia