#
# Description: Resume Session (to be used instead of start.mcfunction on continuuing sessions)
# Called by: lifeseries:triggers/resume
# Entity @s: None
#
# Gamerules
#
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
gamerule spawnMonsters true
gamerule pvp true
#
# Timer
#
execute if score #limitedlife settings matches 1 run function lifeseries:time/time
execute unless score &set_time sessionTime matches -1 run function lifeseries:sessions/count_down
#
# Boogeyman
#
execute if score $boogeyman settings matches 1 run schedule function lifeseries:boogeyman/5_minutes 300s
#
# Title
#
title @a actionbar {text:"Session Resumed",color:"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s