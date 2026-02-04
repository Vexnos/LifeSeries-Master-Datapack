#
# Description: Remove an hour every time a player dies in Limited Life
# Called by: thirdlife:main
# Entity @s: Player
#
scoreboard players remove @s time 3600
title @s title {text:"-1 Hour",color:"red"}
execute as @s at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 100 0
#
# Reset death count
#
scoreboard players set @s deaths 0
#
# Reset trigger scoreboard
#
scoreboard players set @s death 0
#
# Revoke advancement used to detect if the player died to the boogeyman
#
advancement revoke @s only thirdlife:died_to_boogeyman