#
# Description: Suspense function for choosing the Boogeyman
# Called by: thirdlife:boogeyman/countdown
# Entity @s: Player
#
# Titles and Sound
#
title @a title {text:"You are...",color:"yellow"}
execute as @a at @s run playsound minecraft:ui.button.click master @s
execute as @a at @s run playsound matchbox:suspense master @s
#
# Choose the Boogeyman after leaving suspense
#
schedule function thirdlife:boogeyman/choose 6s