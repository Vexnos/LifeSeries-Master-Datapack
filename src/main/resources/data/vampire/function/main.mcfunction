#
# Description: Check if Vampire should burn every 5 seconds
# Called by: #minecraft:tick
# Entity @s: None
#
execute as @a[tag=vampire,predicate=!vampire:is_night,predicate=vampire:can_burn,predicate=!vampire:is_in_biome_that_has_rain] run setfire @s 100