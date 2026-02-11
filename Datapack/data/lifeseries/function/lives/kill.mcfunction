#
# Description: Kill handling for players
# Called by: lifeseries:main
# Entity @s: Player
#
# Cure the Boogeyman if they've killed a player
#
execute if entity @s[tag=boogeyman] as @s run function lifeseries:boogeyman/cure
#
# Advancements that check if a valid kill happens in Limited Life, will add 30 minutes if valid
#
execute if entity @s[advancements={lifeseries:yellow_killed_green=true}] run function lifeseries:lives/kills/yellow_killed_green
execute if entity @s[advancements={lifeseries:red_killed_green=true}] run function lifeseries:lives/kills/red_killed_green
execute if entity @s[advancements={lifeseries:red_killed_yellow=true}] run function lifeseries:lives/kills/red_killed_yellow
execute if entity @s[advancements={lifeseries:red_killed_red=true}] run function lifeseries:lives/kills/red_killed_red
#
# Reset kill count
#
scoreboard players set @s kills 0