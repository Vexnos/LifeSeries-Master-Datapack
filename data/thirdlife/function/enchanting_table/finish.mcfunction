#
# Description: Spawn Enchanting Table Structure and Clean Up
# Called by: thirdlife:enchanting_table/frames
# Entity @s: None
#
# Spawn Enchanting Table
#
schedule clear thirdlife:enchanting_table/particles
execute at @e[tag=spawn_anchor,limit=1] run place template thirdlife:enchanting_table ~-3 ~-1 ~-3
execute at @e[tag=spawn_anchor,limit=1] run summon lightning_bolt ~ ~1 ~
execute at @e[tag=spawn_anchor,limit=1] run particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 1 5 force
# Kill Armor Stand
#
kill @e[tag=spawn_anchor]