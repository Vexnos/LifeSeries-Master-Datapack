#
# Description: Pause or End Session
# Called by: lifeseries:triggers/pause
# Entity @s: None
#
# Gamerules
#
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule pvp false
#
# Timer
#
execute if score #limitedlife settings matches 1 run schedule clear lifeseries:time/time
schedule clear lifeseries:boogeyman/notice
schedule clear lifeseries:boogeyman/choose_notice
schedule clear lifeseries:boogeyman/1_minute
schedule clear lifeseries:boogeyman/countdown
#
# Title
#
title @a actionbar {text:"Session Ended",color:"red"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s