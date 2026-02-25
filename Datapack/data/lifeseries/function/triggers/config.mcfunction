#
# Description: Trigger Config and reset Trigger score
# Called by: lifeseries:main
# Entity @s: Player
#
execute as @s run function lifeseries:config/settings
scoreboard players set @s config 0