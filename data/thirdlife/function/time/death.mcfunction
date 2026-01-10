scoreboard players remove @s time 3600
title @s title {text:"-1 Hour",color:"red"}
execute as @s at @s run playsound minecraft:entity.villager.no master @s
scoreboard players set @s deaths 0
scoreboard players set @s death 0