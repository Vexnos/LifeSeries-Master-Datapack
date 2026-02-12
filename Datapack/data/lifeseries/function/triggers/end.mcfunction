#
# Description: Trigger end and reset trigger score
# Called by: lifeseries:main
# Entity @s: Player
#
execute as @s run function lifeseries:sessions/end
scoreboard players set @s end 0