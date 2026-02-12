#
# Description: Function for starting the game, only used once
# Called by: lifeseries:triggers/start
# Entity @s: None
#
# Sessions
#
scoreboard players add #sessions sessions 1
#
# First Session Commands
#
execute if score #sessions sessions matches 1 run function lifeseries:sessions/first_session
#
# Gamerules
#
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
execute unless score #lastlife settings matches 1 run gamerule pvp true
execute if score #lastlife settings matches 1 if score #sessions sessions matches 2.. run gamerule pvp true
#
# Boogeyman
#
execute if score $boogeyman settings matches 1 run schedule function lifeseries:boogeyman/notice 300s
#
# Timers
#
execute if score #limitedlife settings matches 1 run function lifeseries:time/time
execute if score &set_time sessionTime matches 1.. if score &time sessionTime matches 0 run scoreboard players operation &time sessionTime = &set_time sessionTime
execute unless score &set_time sessionTime matches -1 run function lifeseries:sessions/count_down
#
# Title
#
title @a actionbar {text:"Session Started",color:"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s
