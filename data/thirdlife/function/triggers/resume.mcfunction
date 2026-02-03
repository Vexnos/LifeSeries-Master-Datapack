#
# Description: Trigger Resume and reset trigger score
# Called by: thirdlife:main
# Entity @s: Player
#
execute as @s run function thirdlife:resume
scoreboard players set @s resume 0