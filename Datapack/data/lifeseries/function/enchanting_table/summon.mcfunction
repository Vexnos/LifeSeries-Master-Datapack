#
# Description: Summon falling Enchanting Table
# Called by: lifeseries:start
# Entity @s: Player
#
# Poof
#
execute at @e[tag=spawn_anchor,limit=1] run particle poof ~ ~150 ~ 1 1 1 0.75 500 force
#
# Sounds
#
execute at @e[tag=spawn_anchor,limit=1] run playsound minecraft:block.portal.travel master @a ~ ~150 ~ 100 2
execute at @e[tag=spawn_anchor,limit=1] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~150 ~ 100 0
#
# Summon falling blocks
#
function lifeseries:enchanting_table/particles
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~151 ~ {BlockState:{Name:"minecraft:enchanting_table"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~150 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~150 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~150 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~150 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~150 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~150 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~150 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~150 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~150 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~150 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~150 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~150 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~150 ~2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~150 ~2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~150 ~2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~150 ~2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~150 ~2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~150 ~1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~150 ~ {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~150 ~-1 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~150 ~-2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~150 ~-2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~150 ~-2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~150 ~-2 {BlockState:{Name:"minecraft:bedrock"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~150 ~-2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~150 ~-2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~150 ~-1 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~150 ~ {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~150 ~1 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~3 ~150 ~2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~150 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~150 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~150 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~150 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~150 ~3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~150 ~-2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~150 ~-1 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~150 ~ {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~150 ~1 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-3 ~150 ~2 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~2 ~150 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~1 ~150 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~ ~150 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-1 ~150 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
execute at @e[tag=spawn_anchor,limit=1] run summon falling_block ~-2 ~150 ~-3 {BlockState:{Name:"minecraft:tuff"},CancelDrop:1b,Motion:[0, -2, 0]}
#
# Place the enchanting table in 3 seconds
#
schedule function lifeseries:enchanting_table/finish 3.75s