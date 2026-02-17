#
# Description: Transfer life between players
# Called by: lifeseries:lifetransfer/givelife
# Entity @s: Player
#
scoreboard players remove @s time 3600
scoreboard players add @a[tag=addlife] time 3600
#
# Particles & Sounds
#
execute at @a[tag=addlife] run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.8 0.4 0 100 force
execute as @s run givelife
execute as @a[tag=addlife] at @s run playsound lifeseries:givelife master @s
#
# Titles
#
execute as @s run tellraw @a[tag=addlife] [{text:"Received an hour from: ",color:"green"},{selector:"@s",color:"yellow"}]
execute as @s run title @a[tag=addlife] title {text:"+1 Hour",color:"green"}
tellraw @s [{text:"Gave an hour to: ",color:"green"},{selector:"@a[tag=addlife]",color:"yellow"}]
#
# Remove Tags
#
tag @a[tag=addlife] remove addlife