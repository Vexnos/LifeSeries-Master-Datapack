# Lives
function thirdlife:lives/lives
execute as @a[scores={deaths=1..},tag=!out] run function thirdlife:lives/death

execute if score $lifetransfer settings matches 1 run scoreboard players enable @a[tag=!out,team=!red] givelife
execute if score $lifetransfer settings matches 1 as @a[scores={givelife=1..}] run function thirdlife:lifetransfer/checkplayer