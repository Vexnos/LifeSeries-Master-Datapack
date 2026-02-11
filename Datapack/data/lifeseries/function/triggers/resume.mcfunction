#
# Description: Trigger Resume and reset trigger score
# Called by: lifeseries:main
# Entity @s: Player
#
execute as @s run function lifeseries:resume
scoreboard players set @s resume 0