#
# Description: Spawn Enchanting Table Structure and Clean Up
# Called by: lifeseries:enchanting_table/frames
# Entity @s: None
#
# Spawn Enchanting Table
#
schedule clear lifeseries:enchanting_table/particles
execute at @e[tag=spawn_anchor,limit=1] run place template lifeseries:enchanting_table ~-3 ~-1 ~-3
execute at @e[tag=spawn_anchor,limit=1] run summon lightning_bolt ~ ~1 ~
execute at @e[tag=spawn_anchor,limit=1] run particle minecraft:explosion_emitter ~ ~1 ~ 1 1 1 1 5 force
execute at @e[tag=spawn_anchor,limit=1] run particle minecraft:enchant ~ ~1 ~ 2 2 2 1 500 force
execute at @e[tag=spawn_anchor,limit=1] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 100 1
#
# Kill Armor Stand
#
kill @e[tag=spawn_anchor]