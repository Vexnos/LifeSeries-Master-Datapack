#
# Description: Commands needed to run on the first session
# Called by: lifeseries:sessions/start
# Entity @s: None
#
# Random Roll
#
execute if score #lastlife settings matches 1 run scoreboard players set #rolls rolls 120
execute if score #lastlife settings matches 1 run schedule function lifeseries:random/notice 120s
execute if score #lastlife settings matches 1 run tellraw @a {text:"Randomly Generating Lives in 2 Minutes",color:"gray"}
execute if score #lastlife settings matches 1 as @a at @s run playsound minecraft:ui.button.click master @s
#
# Grace Period Resistance in Last Life
#
execute if score #lastlife settings matches 1 run effect give @a resistance 120 9 true
#
# Scores
#
execute if score #limitedlife settings matches 0 run scoreboard objectives setdisplay list lives
execute if score #limitedlife settings matches 1 run scoreboard objectives setdisplay list
