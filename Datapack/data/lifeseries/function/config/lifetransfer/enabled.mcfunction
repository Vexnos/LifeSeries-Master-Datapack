#
# Description: Enable life transferring from config
# Called by: lifeseries:settings
# Player @s: Player
#
scoreboard players set $lifetransfer settings 1
title @s actionbar {text:"Life Transferring Enabled",color:"green"}
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 2