tellraw @s {"text":"Magic Energy upgrades:","color":"green","bold":true,"underlined":true}
tellraw @s {"text":"Each of these items will permanently increase your","color":"green"}
tellraw @s {"text":"Magic Energy by 2 when used.","color":"green"}
tellraw @s " "
tellraw @s[tag=fusedBlock] [{"text":"Lapis Lazuli Block: ","color":"dark_green"},{"text":"Collected","bold":true,"color":"green"}]
tellraw @s[tag=!fusedBlock] [{"text":"Lapis Lazuli Block: ","color":"dark_green"},{"text":"Uncollected","bold":true,"color":"green"}]
tellraw @s[tag=fusedTear] [{"text":"Ghast Tear: ","color":"dark_green"},{"text":"Collected","bold":true,"color":"green"}]
tellraw @s[tag=!fusedTear] [{"text":"Ghast Tear: ","color":"dark_green"},{"text":"Uncollected","bold":true,"color":"green"}]
tellraw @s[tag=fusedHeart] [{"text":"Heart of the Sea: ","color":"dark_green"},{"text":"Collected","bold":true,"color":"green"}]
tellraw @s[tag=!fusedHeart] [{"text":"Heart of the Sea: ","color":"dark_green"},{"text":"Uncollected","bold":true,"color":"green"}]
tellraw @s " "
tellraw @s {"text":"Magic Energy Info:","color":"green","bold":true,"underlined":true}
tellraw @s [{"text":"Ethereal Form duration increase limit: ","color":"dark_green"},{"score":{"name":"@s","objective":"fusedMana"},"color":"green","bold":true},{"text":" (max 10)","color":"green","bold":true}]
scoreboard players operation @s fusedMeCounter = @s fusedMana
scoreboard players operation @s fusedMeCounter /= 2 fusedMana
scoreboard players operation @s fusedMeCounter += 3 fusedMana
tellraw @s [{"text":"Ethereal Form cooldown decrease limit: ","color":"dark_green"},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"green","bold":true},{"text":" (max 13)","color":"green","bold":true}]
scoreboard players operation @s fusedMeCounter = @s fusedMana
scoreboard players operation @s fusedMeCounter /= 2 fusedMana
scoreboard players operation @s fusedMeCounter -= 10 fusedMana
scoreboard players operation @s fusedMeCounter *= -1 fusedMana
scoreboard players operation @s fusedMeCounter += 12 fusedMana
tellraw @s [{"text":"Ethereal Form duration increase cost: ","color":"dark_green"},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"green","bold":true},{"text":" experience points (min 12)","color":"green","bold":true}]
scoreboard players operation @s fusedMeCounter -= 12 fusedMana
scoreboard players operation @s fusedMeCounter += 4 fusedMana
tellraw @s [{"text":"Ethereal Form cooldown decrease cost: ","color":"dark_green"},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"green","bold":true},{"text":" experience points (min 4)","color":"green","bold":true}]
scoreboard players set @s fusedMeCounter 200
scoreboard players operation @s fusedTransmute = @s fusedMana
scoreboard players operation @s fusedTransmute -= 10 fusedMana
scoreboard players operation @s fusedTransmute -= 10 fusedMana
scoreboard players operation @s fusedTransmute *= -1 fusedMana
scoreboard players operation @s fusedTransmute *= 10 fusedMana
scoreboard players operation @s fusedTransmute /= 4 fusedMana
scoreboard players operation @s fusedTransmute *= 3 fusedMana
scoreboard players operation @s fusedMeCounter -= @s fusedTransmute
scoreboard players set @s fusedTransmute 0
scoreboard players operation @s fusedMeCounter /= 4 fusedMana
tellraw @s [{"text":"Lifesteal efficiency: ","color":"dark_green"},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"green","bold":true},{"text":"% of damage dealt (max 50%)","color":"green","bold":true}]
scoreboard players set @s fusedMeCounter 50
scoreboard players operation @s fusedTransmute = @s fusedMana
scoreboard players operation @s fusedTransmute -= 10 fusedMana
scoreboard players operation @s fusedTransmute -= 10 fusedMana
scoreboard players operation @s fusedTransmute *= -1 fusedMana
scoreboard players operation @s fusedTransmute *= 5 fusedMana
scoreboard players operation @s fusedMeCounter -= @s fusedTransmute
scoreboard players set @s fusedTransmute 20
execute if score @s fusedMeCounter < @s fusedTransmute run scoreboard players set @s fusedMeCounter 0
scoreboard players set @s fusedTransmute 0
tellraw @s [{"text":"Armorsteal duration: ","color":"dark_green"},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"green","bold":true},{"text":"/50 ticks (20 ticks in a second)","color":"green","bold":true}]
tellraw @s [{"text":"Damage cap: ","color":"dark_green"},{"score":{"name":"@s","objective":"fusedDamageCap"},"color":"green","bold":true},{"text":" damage in one hit (50% of max hp)","color":"green","bold":true}]
scoreboard players operation @s fusedMeCounter = @s fusedMana
scoreboard players operation @s fusedMeCounter /= 2 fusedMana
scoreboard players operation @s fusedMeCounter -= 10 fusedMana
scoreboard players operation @s fusedMeCounter *= -1 fusedMana
scoreboard players operation @s fusedMeCounter *= 5 fusedMana
scoreboard players operation @s fusedMeCounter += 10 fusedMana
tellraw @s [{"text":"Transmutation cost: ","color":"dark_green"},{"score":{"name":"@s","objective":"fusedMeCounter"},"color":"green","bold":true},{"text":" experience points (min 10)","color":"green","bold":true}]
tellraw @s " "
tellraw @s [{"text":"Your total Magic Energy is ","color":"dark_green"},{"score":{"name":"@s","objective":"fusedMana"},"color":"green","bold":true},{"text":"/20","bold":true,"color":"green"}]
tellraw @s {"text":"(This can also be viewed on the meter above","color":"green"}
tellraw @s {"text":"your hunger bar)","color":"green"}

scoreboard players set @s fusedMeCounter 0
scoreboard players set @s magicenergy 0
scoreboard players enable @s magicenergy