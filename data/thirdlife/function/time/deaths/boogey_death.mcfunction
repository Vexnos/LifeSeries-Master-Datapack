#
# Description: Remove 2 hours for players who die to the boogeyman in Limited Life
# Called by: thirdlife:time/death
# Entity @s: Player
#
scoreboard players remove @s time 7200
title @s title {text:"-2 Hours",color:"red"}
execute as @s at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 100 0
#
# Revoke advancement used to detect if the player died to the boogeyman
#
advancement revoke @s only thirdlife:died_to_boogeyman