#
# Description: Resume Session (to be used instead of start.mcfunction on continuuing sessions)
# Called by: thirdlife:triggers/resume
# Entity @s: None
#
# Gamerules
#
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
gamerule pvp true
#
# Timer
#
execute if score #limitedlife settings matches 1 run function thirdlife:time/time
#
# Boogeyman
#
execute if score $boogeyman settings matches 1 run schedule function thirdlife:boogeyman/notice 300s
#
# Title
#
title @a actionbar {text:"Session Started",color:"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s