#
# Description: Particles for falling blocks
# Called by: lifeseries:enchanting_table/init
# Entity @s: None
#
schedule function lifeseries:enchanting_table/particles 1t
execute as @e[type=falling_block] at @s run particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.25 1 force
execute as @e[type=falling_block,nbt={BlockState:{Name:"minecraft:enchanting_table"}}] at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 5 1