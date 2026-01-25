execute as @a[tag=boogeyman] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 0
title @a[tag=boogeyman] title {text:"You have FAILED!",color:"red"}
scoreboard players set @a[tag=boogeyman] lives 1
execute if score #limitedlife settings matches 1 as @a[tag=boogeyman,scores={time=28800..}] run scoreboard players set @s time 28800
tag @a remove boogeyman
scoreboard players set @s fail 0