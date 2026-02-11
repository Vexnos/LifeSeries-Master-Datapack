#
# Description: Disable boogeyman from config
# Called by: lifeseries:settings
# Player @s: Player
#
scoreboard players set $boogeyman settings 0
title @s actionbar {text:"Boogeyman Disabled",color:"red"}
execute at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 100 2