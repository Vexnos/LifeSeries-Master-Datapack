#
# Description: Transfer life between players
# Called by: lifeseries:lifetransfer/givelife
# Entity @s: Player
#
scoreboard players remove @s lives 1
scoreboard players add @a[tag=addlife] lives 1
#
# Particles & Sounds
#
execute at @a[tag=addlife] run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.8 0.4 0 100 force
execute as @s run givelife
execute as @a[tag=addlife] at @s run playsound lifeseries:givelife master @s
#
# Titles
#
execute as @s run tellraw @a[tag=addlife] [{text:"Received a life from: ",color:"green"},{selector:"@s",color:"yellow"}]
execute as @s run title @a[tag=addlife] title {text:"You received a life"}
tellraw @s [{text:"Gave a life to: ",color:"green"},{selector:"@a[tag=addlife]",color:"yellow"}]
#
# Remove Tags
#
tag @a[tag=addlife] remove addlife