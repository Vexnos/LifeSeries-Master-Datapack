#
# Description: Initialize the Enchanting Table spawn sequence
# Called by: thirdlife:start
# Entity @s: Player
#
# Summon armor stand to target where the enchanting table will spawn
#
execute at @s run summon armor_stand ~ ~ ~ {Tags:['spawn_anchor'],Invisible:1b,Invulnerable:1b,NoGravity:1b}
#
# Summon falling blocks
#
function thirdlife:enchanting_table/particles
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~101 ~ {BlockState:{Name:"minecraft:enchanting_table"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~100 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~100 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~100 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~100 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~100 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~100 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~100 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~100 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~100 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~100 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~100 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~100 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~100 ~2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~100 ~2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~100 ~2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~100 ~2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~100 ~2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~100 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~100 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~100 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~100 ~-2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~100 ~-2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~100 ~-2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~100 ~-2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~100 ~-2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~100 ~-2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~100 ~-1 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~100 ~ {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~100 ~1 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~100 ~2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~100 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~100 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~100 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~100 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~100 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~100 ~-2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~100 ~-1 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~100 ~ {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~100 ~1 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~100 ~2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~100 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~100 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~100 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~100 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~100 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
#
# Place the enchanting table in 3 seconds
#
schedule function thirdlife:enchanting_table/finish 2.5s