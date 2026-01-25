execute if entity @s[tag=boogeyman] as @s run function thirdlife:boogeyman/cure
execute if entity @s[advancements={thirdlife:yellow_killed_green=true}] run function thirdlife:lives/kills/yellow_killed_green
execute if entity @s[advancements={thirdlife:red_killed_green=true}] run function thirdlife:lives/kills/red_killed_green
execute if entity @s[advancements={thirdlife:red_killed_yellow=true}] run function thirdlife:lives/kills/red_killed_yellow
execute if entity @s[advancements={thirdlife:red_killed_red=true}] run function thirdlife:lives/kills/red_killed_red
scoreboard players set @s kills 0