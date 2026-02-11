#
# Description: Cure the Boogeyman
# Called by: thirdlife:main, thirdlife:lives/kill
# Entity @s: Player
#
# Sound and Titles
#
execute as @s[tag=boogeyman] at @s run playsound thirdlife:boogeyman_cure master @s
title @s[tag=boogeyman] title {text:"You are CURED!",color:"green"}
#
# Add time if limited life is enabled and remove tag
#
execute as @s[tag=boogeyman] if score #limitedlife settings matches 1 run function thirdlife:time/60
tag @s remove boogeyman
# 
# Reset Trigger Score
#
scoreboard players set @s cure 0