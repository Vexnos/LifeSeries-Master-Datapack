scoreboard players remove @s time 7200
title @s title {text:"-2 Hours",color:"red"}
execute as @s at @s run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 100 0
scoreboard players set @s deaths 0
scoreboard players set @s death 0
advancement revoke @s only thirdlife:died_to_boogeyman