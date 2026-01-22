execute as @a[tag=boogeyman] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 0
title @a[tag=boogeyman] title {text:"You have FAILED!",color:"red"}
scoreboard players set @a[tag=boogeyman] lives 1
tag @a remove boogeyman