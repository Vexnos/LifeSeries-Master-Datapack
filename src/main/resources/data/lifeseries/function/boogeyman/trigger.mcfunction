#
# Description: Manually trigger the Boogeyman
# Called by: lifeseries:main
# Entity @s: None
#
# Clear all boogeyman functions to avoid conflicts
#
schedule clear lifeseries:boogeyman/countdown
schedule clear lifeseries:boogeyman/5_minutes
schedule clear lifeseries:boogeyman/1_minute
schedule clear lifeseries:boogeyman/choose_notice
#
# Set countdown to 3 seconds
#
scoreboard players set #countdown countdown 3
#
# Start the Countdown and notify players
#
function lifeseries:boogeyman/countdown
function lifeseries:boogeyman/choose_notice
#
# Reset trigger score
#
scoreboard players set @s boogeyman 0