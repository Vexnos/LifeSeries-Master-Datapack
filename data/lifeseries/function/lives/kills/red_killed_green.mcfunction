#
# Description: If a red name kills a green name, add 30 minutes
# Called by: lifeseries:lives/kill
# Entity @s: Player
#
execute if score #limitedlife settings matches 1 as @s run function lifeseries:time/30
advancement revoke @s only lifeseries:red_killed_green