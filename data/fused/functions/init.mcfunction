scoreboard objectives add fusedMana dummy
scoreboard objectives add fusedMeTransfer dummy
scoreboard objectives add fusedMeCounter dummy
scoreboard objectives add fusedXpCount dummy
scoreboard objectives add fusedTransmute dummy
scoreboard objectives add magicenergy trigger
scoreboard objectives add catalysts trigger
scoreboard objectives add fusedDamageCap dummy
scoreboard objectives add fusedUUID0 dummy
scoreboard objectives add fusedUUID1 dummy
scoreboard objectives add fusedUUID2 dummy
scoreboard objectives add fusedUUID3 dummy
scoreboard objectives add fusedUUID4 dummy
scoreboard objectives add fusedUUID5 dummy
scoreboard objectives add fusedUUID6 dummy
scoreboard objectives add fusedUUID7 dummy
scoreboard objectives add toggleinsomnia trigger
scoreboard players enable @s magicenergy
scoreboard players enable @s catalysts
scoreboard players enable @s toggleinsomnia
tag @s add fusedFused
scoreboard players set 4 fusedMana 4
scoreboard players set 10 fusedMana 10
scoreboard players set -1 fusedMana -1
scoreboard players set 5 fusedMana 5
scoreboard players set 3 fusedMana 3
scoreboard players set 12 fusedMana 12
scoreboard players set 2 fusedMana 2
scoreboard players set 20 fusedMana 20
scoreboard players set 25 fusedMana 25
scoreboard players set 27 fusedMana 27
scoreboard objectives add fusedDmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add fusedDmgA minecraft.custom:minecraft.damage_dealt_absorbed
scoreboard objectives add fusedHealth health
function fused:update_mana
advancement grant @s only fused:root