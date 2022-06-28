scoreboard players operation @s fusedMana /= 2 fusedMana
scoreboard players operation @s fusedMana -= 10 fusedMana
scoreboard players operation @s fusedMana -= 10 fusedMana
scoreboard players operation @s fusedMana *= -1 fusedMana
scoreboard players remove @s[tag=!fusedTear] fusedMana 2
scoreboard players remove @s[tag=!fusedHeart] fusedMana 2
scoreboard players remove @s[tag=!fusedBlock] fusedMana 2

tellraw @s[tag=!fusedSeenWarning,scores={fusedMana=..9}] [{"text":"Your spirit isn't happy with how low your ","color":"red"},{"text":"Magic Energy ","color":"green"},{"text":"is getting. If you want your magical abilities to remain powerful, consider wearing lighter armor.","color":"red"}]
tag @s[scores={fusedMana=..9}] add fusedSeenWarning
tag @s[scores={fusedMana=10..},tag=fusedSeenWarning] remove fusedSeenWarning

execute store result score @s fusedMeCounter run power has @s fused:vsoul_active
scoreboard players remove @s[scores={fusedMeCounter=1..}] fusedMana 10
scoreboard players set @s fusedMeCounter 0

resource operation @s fused:magic_energy = @s fusedMana
advancement grant @s[scores={fusedMana=20}] only fused:me_20
advancement grant @s[scores={fusedMana=0}] only fused:me_0 

function fused:calculate_damage_cap
execute if entity @s[scores={magicenergy=1..}] run function fused:me_info
execute if entity @s[scores={catalysts=1..}] run function fused:soulbind_info
execute if entity @s[scores={toggleinsomnia=1..}] run function fused:toggle_insomnia