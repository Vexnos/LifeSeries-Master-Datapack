#
# Description: Pause Session
# Called by: lifeseries:triggers/pause
# Entity @s: None
#
# Gamerules
#
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule spawnMonsters false
gamerule pvp false
#
# Timer
#
execute if score #limitedlife settings matches 1 run schedule clear lifeseries:time/time
execute unless score &set_time sessionTime matches -1 run schedule clear lifeseries:sessions/count_down
#
# Title
#
title @a actionbar {text:"Session Paused",color:"red"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s