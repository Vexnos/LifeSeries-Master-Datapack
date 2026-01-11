# Gamerules
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
gamerule pvp true

# Timer
execute if score #limitedlife settings matches 1 run function thirdlife:time/time

# Boogeyman
execute if score $boogeyman settings matches 1 run schedule function thirdlife:boogeyman/notice 300s

title @a actionbar {text:"Session Started",color:"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s