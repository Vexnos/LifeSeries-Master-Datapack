#
# Description: Trigger Pause and reset trigger score
# Called by: lifeseries:main
# Entity @s: Player
#
execute as @s run function lifeseries:sessions/pause
scoreboard players set @s pause 0