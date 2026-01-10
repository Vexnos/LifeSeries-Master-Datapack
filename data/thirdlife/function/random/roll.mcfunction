execute unless score #rolls rolls matches 0 run scoreboard players remove #rolls rolls 1

execute as @a run function thirdlife:random/display

execute if score #rolls rolls matches 0 as @a run scoreboard players operation @s lives = @s rolls
execute if score #rolls rolls matches 0 run title @a times 10 70 20
execute if score #rolls rolls matches 0 run gamerule pvp true

execute if score #rolls rolls matches 30.. run schedule function thirdlife:random/roll 1t
execute if score #rolls rolls matches 15..29 run schedule function thirdlife:random/roll 2t
execute if score #rolls rolls matches 10..14 run schedule function thirdlife:random/roll 5t
execute if score #rolls rolls matches 7..9 run schedule function thirdlife:random/roll 7t
execute if score #rolls rolls matches 4..6 run schedule function thirdlife:random/roll 10t
execute if score #rolls rolls matches 1..3 run schedule function thirdlife:random/roll 1s
