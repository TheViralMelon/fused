scoreboard players operation @s fusedMana /= 2 fusedMana
scoreboard players operation @s fusedMana -= 10 fusedMana
scoreboard players operation @s fusedMana -= 10 fusedMana
scoreboard players operation @s fusedMana *= -1 fusedMana
scoreboard players remove @s[tag=!fusedTear] fusedMana 2
scoreboard players remove @s[tag=!fusedHeart] fusedMana 2
scoreboard players remove @s[tag=!fusedBlock] fusedMana 2
resource operation @s fused:magic_energy = @s fusedMana

function fused:calculate_damage_cap
execute if entity @s[scores={magicenergy=1..}] run function fused:me_info
execute if entity @s[scores={catalysts=1..}] run function fused:soulbind_info
scoreboard players set @s fusedMana 0