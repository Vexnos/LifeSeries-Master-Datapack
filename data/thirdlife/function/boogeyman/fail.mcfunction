execute as @a[tag=boogeyman] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 0
title @a[tag=boogeyman] title {text:"You have FAILED!",color:"red"}
execute if score #limitedlife settings matches 0 run tellraw @a[tag=boogeyman] [{text:"You have failed to kill a green or yellow player this session as the Boogeyman. As punishment, you have dropped to your",color:"gray"},{text:" Last Life",color:"red"},{text:". All alliances and ties are severed and you are now hostile to all players. You may team with other players on their Last Life if you wish.",color:"gray"}]
execute if score #limitedlife settings matches 1 run tellraw @a[tag=boogeyman] [{text:"You have failed to kill a green or yellow player this session as the Boogeyman. As punishment, you have dropped to 8 Hours and you are now",color:"gray"},{text:" Red",color:"red"}]
execute unless score #limitedlife settings matches 1 run scoreboard players set @a[tag=boogeyman] lives 1
execute if score #limitedlife settings matches 1 as @a[tag=boogeyman,scores={time=28800..}] run scoreboard players set @s time 28800
tag @a remove boogeyman
scoreboard players set @s fail 0