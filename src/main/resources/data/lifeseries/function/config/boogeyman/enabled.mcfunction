#
# Description: Enable boogeyman from config
# Called by: lifeseries:settings
# Player @s: Player
#
scoreboard players set $boogeyman settings 1
title @s actionbar {text:"Boogeyman Enabled",color:"green"}
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 2