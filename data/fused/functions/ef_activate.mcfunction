resource set @s fused:ef_active_duration 40
execute store result score @s fusedMeCounter run resource get @s fused:magic_energy
scoreboard players operation @s fusedMeCounter -= 20 fusedMana
scoreboard players operation @s fusedMeCounter *= -1 fusedMana
scoreboard players operation @s fusedMeCounter *= 2 fusedMana
resource operation @s fused:ethereal_form_cooldown += @s fusedMeCounter
resource operation @s fused:ef_active_duration -= @s fusedMeCounter
scoreboard players set @s fusedMeCounter 0 