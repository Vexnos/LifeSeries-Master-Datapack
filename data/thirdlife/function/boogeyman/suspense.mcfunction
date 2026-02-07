#
# Description: Suspense function for choosing the Boogeyman
# Called by: thirdlife:boogeyman/countdown
# Entity @s: Player
#
# Titles and Sound
#
title @a times 10 110 40
title @a title {text:"You are...",color:"yellow"}
execute as @a at @s run playsound minecraft:ui.button.click master @s
execute as @a at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 100 0
#
# Choose the Boogeyman after leaving suspense
#
schedule function thirdlife:boogeyman/choose 8.5s