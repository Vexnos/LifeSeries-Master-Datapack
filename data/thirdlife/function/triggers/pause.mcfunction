#
# Description: Trigger Pause and reset trigger score
# Called by: thirdlife:main
# Entity @s: Player
#
execute as @s run function thirdlife:pause
scoreboard players set @s pause 0