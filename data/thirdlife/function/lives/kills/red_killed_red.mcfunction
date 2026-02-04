#
# Description: If a red name kills a red name, add 30 minutes
# Called by: thirdlife:lives/kill
# Entity @s: Player
#
execute if score #limitedlife settings matches 1 as @s run function thirdlife:time/30
advancement revoke @s only thirdlife:red_killed_red