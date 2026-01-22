# Gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule keepInventory false
gamerule doFireTick true
gamerule locatorBar false
gamerule doMobSpawning false
gamerule pvp false

# Settings
scoreboard players set #thirdlife settings 0
scoreboard players set #lastlife settings 1
scoreboard players set #limitedlife settings 0
scoreboard players set $boogeyman settings 1
scoreboard players set $lifetransfer settings 1

# Scoreboards
scoreboard players reset @a lives
scoreboard players reset @a time

# Teams
team leave @a

# Tags
tag @a remove out

# Time
time set 0
weather clear

# Gamemode
gamemode survival @a

# Functions
schedule clear thirdlife:time/time
schedule clear thirdlife:boogeyman/countdown
schedule clear thirdlife:boogeyman/choose
schedule clear thirdlife:boogeyman/notice
schedule clear thirdlife:random/notice

# Message
title @s actionbar {text:"Last Life Selected",color:"yellow"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s