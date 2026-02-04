#
# Description: Load Last Life Settings
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
scoreboard players set #thirdlife settings 0
scoreboard players set #lastlife settings 1
scoreboard players set #limitedlife settings 0
scoreboard players set $boogeyman settings 1
scoreboard players set $lifetransfer settings 1
#
# Scoreboards
#
scoreboard players reset @a lives
scoreboard players reset @a time
#
# Message
#
title @s actionbar {text:"Last Life Selected",color:"yellow"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s