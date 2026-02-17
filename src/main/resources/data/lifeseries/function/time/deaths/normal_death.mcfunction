#
# Description: Remove an hour every time a player dies in Limited Life
# Called by: lifeseries:time/death
# Entity @s: Player
#
scoreboard players remove @s time 3600
title @s title {text:"-1 Hour",color:"red"}
execute as @s at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 100 0