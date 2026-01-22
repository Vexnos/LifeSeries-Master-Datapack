scoreboard players remove @s time 3600
title @s title {text:"-1 Hour",color:"red"}
execute as @s at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 100 0
scoreboard players set @s deaths 0
scoreboard players set @s death 0
advancement revoke @s only thirdlife:died_to_boogeyman