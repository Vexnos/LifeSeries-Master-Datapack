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
# execute at @s run particle minecraft:effect{color:[0.5,1,0.2]} ~ ~1 ~ 0.5 0.5 0.5 1 100 force
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.25 100 force
execute as @s at @s run playsound minecraft:item.totem.use master @s
execute as @a[tag=addlife] at @s run playsound minecraft:item.totem.use master @s
#
# Titles
#
execute as @s run title @a[tag=addlife] actionbar [{text:"Received a life from: ",color:"green"},{selector:"@s",color:"yellow"}]
title @s actionbar [{text:"Gave a life to: ",color:"green"},{selector:"@a[tag=addlife]",color:"yellow"}]
#
# Remove Tags
#
tag @a[tag=addlife] remove addlife