#
# Description: 5 Minute Notice for choosing the Boogeyman
# Called by: thirdlife:start, thirdlife:resume
# Entity @s:
#
# Titles and Sound
#
tellraw @a {text:"The Boogeymen are being chosen in 5 minutes",color:"red"}
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s
#
# Set Countdown to 5 seconds
#
scoreboard players set #countdown countdown 5
#
# Schedule notice and countdown functions
#
schedule function thirdlife:boogeyman/countdown 300s
schedule function thirdlife:boogeyman/1_minute 240s
schedule function thirdlife:boogeyman/choose_notice 300s