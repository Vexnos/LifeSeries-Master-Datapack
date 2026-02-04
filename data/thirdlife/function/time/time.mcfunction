#
# Description: Count down timer for players in Limited Life
# Called by: thirdlife:start, thirdlife:resume
# Entity @s: Player
#
scoreboard players remove @a[scores={time=1..}] time 1
#
# Function to convert raw time into Hours, Minutes, and Seconds
#
execute as @a[tag=!out] run function thirdlife:time/hms_convert
#
# Display time in the color of the player's team
#
execute as @a[team=green] run function thirdlife:time/colors/green
execute as @a[team=yellow] run function thirdlife:time/colors/yellow
execute as @a[team=red] run function thirdlife:time/colors/red
#
# Run Timer every 1 second
#
schedule function thirdlife:time/time 1s