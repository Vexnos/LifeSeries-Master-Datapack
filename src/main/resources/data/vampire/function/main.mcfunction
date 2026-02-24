#
# Description: Check if Vampire should burn every 5 seconds
# Called by: #minecraft:tick
# Entity @s: None
#
execute as @a[tag=vampire,predicate=vampire:can_burn] unless predicate vampire:is_night unless predicate vampire:is_raining run setfire @s 100
execute as @a[tag=vampire,predicate=vampire:can_burn] unless predicate vampire:is_night if predicate vampire:is_raining if predicate vampire:in_dry_biome run setfire @s 100