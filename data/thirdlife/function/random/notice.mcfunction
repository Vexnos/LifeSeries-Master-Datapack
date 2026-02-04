#
# Description: Notify players that lives will be randomly rolled
# Called by: thirdlife:start, thirdlife:random/trigger
# Entity @s: Player
#
tellraw @a {text:"Randomly Generating Lives...",color:"gray"}
execute as @a at @s run playsound minecraft:ui.button.click master @s
effect clear @a resistance
schedule function thirdlife:random/roll 1s