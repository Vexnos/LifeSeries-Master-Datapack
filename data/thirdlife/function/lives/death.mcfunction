scoreboard players operation @s lives -= @s deaths
scoreboard players set @s deaths 0
execute as @s[scores={lives=..0},tag=!out] run function thirdlife:lives/out