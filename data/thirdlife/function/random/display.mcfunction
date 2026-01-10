execute store result score @s rolls run random value 2..6
title @a times 0 70 0
execute if score @s rolls matches 4.. run title @s title {score:{name:"@s",objective:"rolls"},color:"dark_green"}
execute if score @s rolls matches 3 run title @s title {score:{name:"@s",objective:"rolls"},color:"green"}
execute if score @s rolls matches 2 run title @s title {score:{name:"@s",objective:"rolls"},color:"yellow"}
execute at @s run playsound minecraft:ui.button.click master @s