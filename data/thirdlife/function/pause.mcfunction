# Gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule pvp false

# Timer
execute if score #limitedlife settings matches 1 run schedule clear thirdlife:time/time
schedule clear thirdlife:boogeyman/notice
schedule clear thirdlife:boogeyman/countdown

title @a actionbar {text:"Session Ended",color:"red"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s