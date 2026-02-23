#
# Description: 5 Minute Notice for choosing the Boogeyman
# Called by: lifeseries:sessions/start, lifeseries:sessions/resume
# Entity @s:
#
# Titles and Sound
#
tellraw @a {text:"The Boogeymen are being chosen in 5 minutes",color:"dark_red"}
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s
#
# Set Countdown to 3 seconds
#
scoreboard players set #countdown countdown 3
#
# Schedule notice and countdown functions
#
schedule function lifeseries:boogeyman/countdown 310s
schedule function lifeseries:boogeyman/1_minute 240s
schedule function lifeseries:boogeyman/choose_notice 300s