#
# Description: Trigger Start and reset trigger score
# Called by: lifeseries:main
# Entity @s: Player
#
execute as @s run function lifeseries:sessions/start
scoreboard players set @s start 0