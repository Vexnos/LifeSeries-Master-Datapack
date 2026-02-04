#
# Description: Load Third Life Settings
# Called by: thirdlife:settings
# Entity @s: Player
#
# Shared
#
function thirdlife:config/shared
#
# Gamerules
#
gamerule keepInventory false
#
# Settings
#
scoreboard players set #thirdlife settings 1
scoreboard players set #lastlife settings 0
scoreboard players set #limitedlife settings 0
scoreboard players set $boogeyman settings 0
scoreboard players set $lifetransfer settings 0
#
# Scoreboards
#
scoreboard players set @a lives 3
scoreboard players reset @a time
#
# Message
#
title @s actionbar {text:"Third Life Selected",color:"green"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s