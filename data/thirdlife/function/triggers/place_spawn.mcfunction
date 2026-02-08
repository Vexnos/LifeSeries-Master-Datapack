#
# Description: Function to place the spawn template
# Called by: thirdlife:settings
# Entity @s: Player
#
# Set World Spawn and Place Spawn Template
#
execute at @s run setworldspawn ~ ~ ~
execute at @s run place template thirdlife:spawn ~-8 ~-1 ~-8
#
# Titles & Sound
#
title @s actionbar {text:"Spawn Point Placed","color":"green"}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s
#
# Reset trigger scoreboard
#
scoreboard players set @s placeSpawn 0