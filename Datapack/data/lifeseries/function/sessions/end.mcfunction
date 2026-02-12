#
# Description: End Session
# Called by: lifeseries:triggers/end
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
schedule clear lifeseries:sessions/count_down
#
# Fail the Boogeyman
#
execute if score $boogeyman settings matches 1 run function lifeseries:boogeyman/fail
#
# Fail the Society
#
execute if score $secretsociety settings matches 1 as @a[tag=secret_society] run tag @s remove secret_society
#
# Title
#
title @a actionbar {text:"Session Ended",color:"red"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s