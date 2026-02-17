#
# Description: Trigger function for placing the Enchanting Table
# Called by: lifeseries:main
# Entity @s: Player
#
# Summon armor stand to target where the enchanting table will spawn
#
execute at @s run summon armor_stand ~ ~ ~ {Tags:['spawn_anchor'],Invisible:1b,Invulnerable:1b,NoGravity:1b}
#
# Schedule next function in sequence
#
schedule function lifeseries:enchanting_table/summon 2s
#
# Sounds
#
execute at @e[tag=spawn_anchor,limit=1] run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 100 2
#
# Particles
#
execute at @e[tag=spawn_anchor,limit=1] run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 10 1000 force
#
# Reset trigger scoreboard
#
scoreboard players set @s placeEnchantingTable 0