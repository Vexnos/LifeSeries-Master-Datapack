#
# Description: Function for starting the game, only used once
# Called by: lifeseries:triggers/start
# Entity @s: None
#
# Gamerules
#
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
execute unless score #lastlife settings matches 1 run gamerule pvp true
#
# Random Roll
#
execute if score #lastlife settings matches 1 run scoreboard players set #rolls rolls 120
execute if score #lastlife settings matches 1 run schedule function lifeseries:random/notice 120s
execute if score #lastlife settings matches 1 run tellraw @a {text:"Randomly Generating Lives in 2 Minutes",color:"gray"}
execute if score #lastlife settings matches 1 as @a at @s run playsound minecraft:ui.button.click master @s
#
# Boogeyman
#
execute if score $boogeyman settings matches 1 run schedule function lifeseries:boogeyman/notice 300s
#
# Grace Period Resistance in Last Life
#
execute if score #lastlife settings matches 1 run effect give @a resistance 120 9 true
#
# Scores
#
execute if score #limitedlife settings matches 0 run scoreboard objectives setdisplay list lives
execute if score #limitedlife settings matches 1 run scoreboard objectives setdisplay list
#
# Timer for Limited Life
#
execute if score #limitedlife settings matches 1 run function lifeseries:time/time
#
# Title
#
title @a actionbar {text:"Session Started",color:"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s