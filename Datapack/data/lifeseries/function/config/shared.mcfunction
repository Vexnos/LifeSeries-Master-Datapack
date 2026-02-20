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
scoreboard players set #sessions sessions 0
#
# If the time scoreboard is empty, set it from the stored time scoreboard
#
execute unless score &time sessionTime matches -2147483648..2147483647 run scoreboard players set &time sessionTime -1
#
# Scoreboard Displays
#
scoreboard objectives setdisplay list lives
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
# Set XP to 0
#
xp set @a 0 points
xp set @a 0 levels
#
# Revoke all advancements
#
advancement revoke @a everything
#
# Functions
#
schedule clear lifeseries:time/time
schedule clear lifeseries:sessions/time
schedule clear lifeseries:boogeyman/countdown
schedule clear lifeseries:boogeyman/choose
schedule clear lifeseries:boogeyman/5_minutes
schedule clear lifeseries:random/notice
