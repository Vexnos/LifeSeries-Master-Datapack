#
# Description: Trigger Start and reset trigger score
# Called by: thirdlife:main
# Entity @s: Player
#
execute as @s run function thirdlife:start
scoreboard players set @s start 0