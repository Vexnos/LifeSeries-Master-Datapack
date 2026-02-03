#
# Description: Trigger Config and reset Trigger score
# Called by: thirdlife:main
# Entity @s: Player
#
execute as @s run function thirdlife:settings
scoreboard players set @s config 0