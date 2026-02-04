#
# Description: Load Limited Life Settings
# Called by: thirdlife:settings
# Entity @s: Player
#
# Shared
#
function thirdlife:config/shared
#
# Gamerules
#
gamerule keepInventory true
#
# Settings
#
scoreboard players set #thirdlife settings 0
scoreboard players set #lastlife settings 0
scoreboard players set #limitedlife settings 1
scoreboard players set $boogeyman settings 1
scoreboard players set $lifetransfer settings 0
#
# Scoreboards
#
scoreboard players set @a time 86400
scoreboard players reset @a lives
#
# Message
#
title @s actionbar {text:"Limited Life Selected",color:"red"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s