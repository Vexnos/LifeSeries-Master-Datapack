#
# Description: Manually trigger the Boogeyman
# Called by: thirdlife:main
# Entity @s: None
#
# Clear all boogeyman functions to avoid conflicts
#
schedule clear thirdlife:boogeyman/countdown
schedule clear thirdlife:boogeyman/notice
schedule clear thirdlife:boogeyman/1_minute
schedule clear thirdlife:boogeyman/choose_notice
#
# Set countdown to 5 seconds
#
scoreboard players set #countdown countdown 5
#
# Start the Countdown and notify players
#
function thirdlife:boogeyman/countdown
function thirdlife:boogeyman/choose_notice
#
# Reset trigger score
#
scoreboard players set @s boogeyman 0