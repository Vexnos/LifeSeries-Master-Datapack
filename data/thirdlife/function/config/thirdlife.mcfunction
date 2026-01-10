# Gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule keepInventory false
gamerule doFireTick true
gamerule locatorBar false
gamerule doMobSpawning false
gamerule pvp false

# Settings
scoreboard players set #thirdlife settings 1
scoreboard players set #lastlife settings 0
scoreboard players set #limitedlife settings 0
scoreboard players set $boogeyman settings 0
scoreboard players set $lifetransfer settings 0

# Scoreboards
scoreboard players set @a lives 3
scoreboard players reset @a time

# Teams
team leave @a

# Tags
tag @a remove out

# Time
time set 0

# Gamemode
gamemode survival @a

# Message
title @s actionbar {text:"Third Life Selected",color:"green"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s