#
# Description: Trigger randomization of lives
# Called by: lifeseries:main
# Entity @s: Player
#
schedule clear lifeseries:random/notice
function lifeseries:random/notice
#
# Reset trigger scoreboard
#
scoreboard players set @s roll 0