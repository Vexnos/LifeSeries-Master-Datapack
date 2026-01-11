# Lives
execute unless score #limitedlife settings matches 1 run function thirdlife:lives/lives
execute if score #limitedlife settings matches 1 run function thirdlife:time/color
execute as @a[scores={kills=1..}] run function thirdlife:lives/kill
execute if score #limitedlife settings matches 0 as @a[scores={deaths=1..},tag=!out] run function thirdlife:lives/death
execute if score #limitedlife settings matches 1 as @a[scores={deaths=1..},tag=!out] run function thirdlife:time/death

execute if score #limitedlife settings matches 1 run scoreboard players enable @a[tag=!out] 30
execute unless score #thirdlife settings matches 1 run scoreboard players enable @a[tag=!out,tag=boogeyman] cure
execute if score #limitedlife settings matches 1 as @a[scores={30=1..}] run function thirdlife:time/30
execute unless score #thirdlife settings matches 1 as @a[scores={cure=1..}] run function thirdlife:boogeyman/cure

execute if score #limitedlife settings matches 1 run scoreboard players enable @a[tag=!out] death
execute if score #limitedlife settings matches 1 as @a[scores={death=1..},tag=!out] run function thirdlife:time/death

execute if score $lifetransfer settings matches 1 run scoreboard players enable @a[tag=!out,team=!red] givelife
execute if score $lifetransfer settings matches 1 as @a[scores={givelife=1..}] run function thirdlife:lifetransfer/checkplayer
execute if score $lifetransfer settings matches 0 run scoreboard players set @a givelife 0