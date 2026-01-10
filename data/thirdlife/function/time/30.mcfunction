scoreboard players add @s[tag=!out] time 1800
execute as @s[tag=!out] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 2
title @s[tag=!out] title {text:"+30 Minutes!",color:"green"}
title @s[tag=out] actionbar {text:"You have run out of time!",color:"red"}
scoreboard players set @s 30 0