# Gamerules
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
execute unless score #lastlife settings matches 1 run gamerule pvp true

# Random Roll
execute if score #lastlife settings matches 1 run scoreboard players set #rolls rolls 120
execute if score #lastlife settings matches 1 run schedule function thirdlife:random/notice 120s
execute if score #lastlife settings matches 1 run tellraw @a {text:"Randomly Generating Lives in 2 Minutes",color:"gray"}
execute if score #lastlife settings matches 1 at @a run playsound minecraft:ui.button.click master @s

# Boogeyman
execute if score $boogeyman settings matches 1 run schedule function thirdlife:boogeyman/notice 300s

# Timer
execute if score #limitedlife settings matches 1 run function thirdlife:time/time

title @a actionbar {text:"Session Started",color:"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s