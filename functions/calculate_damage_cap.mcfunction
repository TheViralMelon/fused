execute store result score @s fusedMeCounter run attribute @s minecraft:generic.max_health get
scoreboard players operation @s fusedMeCounter /= 2 fusedMana
# scoreboard players operation @s fusedMeCounter *= 10 fusedMana
# scoreboard players operation @s fusedMeCounter /= 25 fusedMana
# execute store result score @s fusedMeTransfer run attribute @s minecraft:generic.max_health get
# scoreboard players operation @s fusedMeTransfer /= 20 fusedMana
# execute store result score @s fusedTransmute run resource get @s fused:magic_energy
# scoreboard players operation @s fusedTransmute -= 20 fusedMana
# scoreboard players operation @s fusedTransmute *= -1 fusedMana
# scoreboard players operation @s fusedMeTransfer *= @s fusedTransmute
# scoreboard players operation @s fusedMeCounter += @s fusedMeTransfer
# scoreboard players set @s fusedMeTransfer 0
# scoreboard players set @s fusedTransmute 0
scoreboard players operation @s fusedDamageCap = @s fusedMeCounter
# execute store result score @s fusedMeCounter run attribute @s minecraft:generic.max_health get
# execute if score @s fusedDamageCap > @s fusedMeCounter run scoreboard players operation @s fusedDamageCap = @s fusedMeCounter
scoreboard players set @s fusedMeCounter 0