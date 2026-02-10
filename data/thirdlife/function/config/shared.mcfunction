#
# Description: Shared settings
# Called by: thirdlife:lastlife, thirdlife:limitedlife, thirdlife:shared
# Entity @s: None
#
# Gamerules
#
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doFireTick true
gamerule locatorBar false
gamerule doMobSpawning false
gamerule pvp false
#
# Settings
#
scoreboard players set #thirdlife settings 0
scoreboard players set #lastlife settings 0
scoreboard players set #limitedlife settings 0
scoreboard players set $boogeyman settings 0
scoreboard players set $lifetransfer settings 0
#
# HP
#
execute as @a run attribute @s minecraft:max_health base reset
gamerule naturalRegeneration true
#
# Teams
#
team leave @a
#
# Tags
#
tag @a remove out
tag @a remove boogeyman
#
# Time
#
time set 0
weather clear
#
# Gamemode
#
gamemode survival @a
#
# Revoke all advancements
#
advancement revoke @a everything
#
# Functions
#
schedule clear thirdlife:time/time
schedule clear thirdlife:boogeyman/countdown
schedule clear thirdlife:boogeyman/choose
schedule clear thirdlife:boogeyman/notice
schedule clear thirdlife:random/notice
