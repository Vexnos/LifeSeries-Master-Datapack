gamemode spectator @s
execute unless score #limitedlife settings matches 1 run title @s title {text:"You have run out of Lives!",color:"red"}
execute if score #limitedlife settings matches 1 run title @s title {text:"You have run out of Time!",color:"red"}
execute at @s run playsound minecraft:entity.ender_dragon.growl master @s
execute at @s run summon minecraft:lightning_bolt ~ ~3 ~
execute at @s run particle explosion ~ ~1 ~ 1 1 1 0 25 force
tag @s add out