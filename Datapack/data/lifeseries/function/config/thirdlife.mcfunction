#
# Description: Load Third Life Settings
# Called by: lifeseries:config/settings
# Entity @s: Player
#
# Shared
#
function lifeseries:config/shared
#
# Gamerules
#
gamerule keepInventory false
#
# Settings
#
scoreboard players set #thirdlife settings 1
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