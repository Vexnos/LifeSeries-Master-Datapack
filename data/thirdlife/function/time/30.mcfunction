#
# Description: Add 30 minutes of time to player
# Called by: thirdlife:main
# Entity @s: Player
#
# Filter out players who are out
#
scoreboard players add @s[tag=!out] time 1800
#
# Titles and Sound
#
execute as @s[tag=!out] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 2
title @s[tag=!out] title {text:"+30 Minutes!",color:"green"}
#
# Remind players who are out that they are out
# 
title @s[tag=out] actionbar {text:"You have run out of time!",color:"red"}
#
# Reset trigger scoreboard
#
scoreboard players set @s 30 0