#
# Description: Disable life transferring from config
# Called by: lifeseries:config/settings
# Player @s: Player
#
scoreboard players set $lifetransfer settings 0
title @s actionbar {text:"Life Transferring Disabled",color:"red"}
execute at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 100 2