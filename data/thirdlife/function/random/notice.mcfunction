tellraw @a {text:"Randomly Generating Lives...",color:"gray"}
execute as @a at @s run playsound minecraft:ui.button.click master @s
schedule function thirdlife:random/roll 1s