#
# Description: Punish players who attempt to circumvent the nether roof
# Called by: #minecraft:load
# Entity @s: Player
#
execute as @e[predicate=lifeseries:on_nether_roof] run kill @s
schedule function lifeseries:anti_nether 1s