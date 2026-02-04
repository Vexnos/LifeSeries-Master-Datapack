#
# Description: Trigger randomization of lives
# Called by: thirdlife:main
# Entity @s: Player
#
schedule clear thirdlife:random/notice
function thirdlife:random/notice
#
# Reset trigger scoreboard
#
scoreboard players set @s roll 0