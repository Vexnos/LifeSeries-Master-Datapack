#
# Description: Load Limited Life Settings
# Called by: lifeseries:config/settings
# Entity @s: Player
#
# Shared
#
function lifeseries:config/shared
#
# Gamerules
#
gamerule keepInventory true
#
# Settings
#
scoreboard players set #pastlife settings 1
scoreboard players set $boogeyman settings 1
#
# Scoreboards
#
scoreboard players set @a lives 6
scoreboard players reset @a time
#
# Message
#
title @s actionbar {text:"Past Life Selected",color:"gold"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s