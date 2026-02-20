#
# Description: Initialize Scoreboards and Teams
# Called by: #minecraft:load
# Entity @s: None
#
# Scoreboards
#
scoreboard objectives add lives dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add kills minecraft.custom:minecraft.player_kills
scoreboard objectives add settings dummy
scoreboard objectives add rolls dummy
scoreboard objectives add givelife trigger
scoreboard objectives add countdown dummy
scoreboard objectives add time dummy
scoreboard objectives add 30 trigger
scoreboard objectives add death trigger
scoreboard objectives add cure trigger
scoreboard objectives add seconds dummy
scoreboard objectives add minutes dummy
scoreboard objectives add hours dummy
scoreboard objectives add pause trigger
scoreboard objectives add end trigger
scoreboard objectives add resume trigger
scoreboard objectives add config trigger
scoreboard objectives add start trigger
scoreboard objectives add boogeyman trigger
scoreboard objectives add roll trigger
scoreboard objectives add fail trigger
scoreboard objectives add placeEnchantingTable trigger
scoreboard objectives add placeSpawn trigger
scoreboard objectives add setSessionTime trigger
scoreboard objectives add getSessionTime trigger
scoreboard objectives add sessionTime dummy
scoreboard objectives add sessions dummy
scoreboard objectives add hp health {text:"❤",color:"red"}
scoreboard objectives setdisplay below_name hp
#
# If the set time for the session is not set, set it to -1 to avoid issues
#
execute unless score &set_time sessionTime matches -2147483648..2147483647 run scoreboard players set &set_time sessionTime -1
#
# Values for time conversion
#
scoreboard players set #seconds seconds 60
scoreboard players set #minutes minutes 60
scoreboard players set #hours hours 3600
#
# Teams
#
team add dark_green
team modify dark_green color dark_green
team modify dark_green seeFriendlyInvisibles false

team add green
team modify green color green
team modify green seeFriendlyInvisibles false

team add yellow
team modify yellow color yellow
team modify yellow seeFriendlyInvisibles false

team add red
team modify red color red
team modify red seeFriendlyInvisibles false

team add dead
team modify dead color gray
team modify dead seeFriendlyInvisibles false
#
# Clear Helmets
#
function lifeseries:clear_helmets
#
# Reload Message
#
title @a[tag=admin] actionbar {text:"Reloaded!",color:"green"}
execute as @a[tag=admin] at @s run playsound minecraft:block.beacon.activate master @s