#
# Description: Notify players that lives will be randomly rolled
# Called by: lifeseries:start, lifeseries:random/trigger
# Entity @s: Player
#
tellraw @a {text:"Randomly Generating Lives...",color:"gray"}
title @a title {text:"You will have...",color:"yellow"}
execute as @a at @s run playsound minecraft:ui.button.click master @s
effect clear @a resistance
schedule function lifeseries:random/roll 1s