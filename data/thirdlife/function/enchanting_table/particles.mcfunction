#
# Description: Particles for falling blocks
# Called by: thirdlife:enchanting_table/init
# Entity @s: None
#
schedule function thirdlife:enchanting_table/particles 10t
execute as @e[type=falling_block] run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0 25 force