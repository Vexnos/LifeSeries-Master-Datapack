#
# Description: Check players are not red and not out
# Called by: lifeseries:main
# Entity @s: Player
#
execute unless score #limitedlife settings matches 1 run function lifeseries:lifetransfer/checkplayer/lastlife
execute if score #limitedlife settings matches 1 run function lifeseries:lifetransfer/checkplayer/limitedlife
#
# Reset trigger score
#
scoreboard players set @s givelife 0