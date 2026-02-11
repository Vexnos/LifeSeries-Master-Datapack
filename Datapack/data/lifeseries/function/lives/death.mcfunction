#
# Description: Subtract amount of deaths from players' lives
# Called by: lifeseries:main
# Entity @s: Player
#
scoreboard players operation @s lives -= @s deaths
scoreboard players set @s deaths 0
#
# Handling for a player who dies and has no lives left
#
execute as @s[scores={lives=..0},tag=!out] run function lifeseries:lives/out