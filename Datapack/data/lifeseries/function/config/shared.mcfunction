#
# Description: Shared settings
# Called by: lifeseries:lastlife, lifeseries:limitedlife, lifeseries:shared
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
scoreboard players set #pastlife settings 0
scoreboard players set $boogeyman settings 0
scoreboard players set $lifetransfer settings 0
scoreboard players set &time sessionTime 0
scoreboard players set #sessions sessions 0
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
schedule clear lifeseries:time/time
schedule clear lifeseries:sessions/count_down
schedule clear lifeseries:boogeyman/countdown
schedule clear lifeseries:boogeyman/choose
schedule clear lifeseries:boogeyman/notice
schedule clear lifeseries:random/notice
