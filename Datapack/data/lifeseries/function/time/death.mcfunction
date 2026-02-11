#
# Description: Check type of death and run functions accordingly
# Called by: lifeseries:main
# Entity @s: Player
#
execute as @s[tag=!out,advancements={lifeseries:died_to_boogeyman=false}] run function lifeseries:time/deaths/normal_death
execute as @s[tag=!out,advancements={lifeseries:died_to_boogeyman=true}] run function lifeseries:time/deaths/boogey_death
#
# Reset death count
#
scoreboard players set @s deaths 0
#
# Reset trigger scoreboard
#
scoreboard players set @s death 0