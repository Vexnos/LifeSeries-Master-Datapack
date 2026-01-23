execute store result score @s rolls run random value 2..6
title @a times 0 70 0
execute if score @s rolls matches 4.. run title @s title {score:{name:"@s",objective:"rolls"},color:"dark_green"}
execute if score @s rolls matches 3 run title @s title {score:{name:"@s",objective:"rolls"},color:"green"}
execute if score @s rolls matches 2 run title @s title {score:{name:"@s",objective:"rolls"},color:"yellow"}
execute if score #rolls rolls matches 1.. as @s at @s run playsound minecraft:ui.button.click master @s
execute if score #rolls rolls matches 0 as @s at @s run playsound minecraft:ui.toast.challenge_complete master @s
execute if score #rolls rolls matches 0 if score @s rolls matches 4.. run tellraw @s [{text:"You rolled ",color:"gray"},{score:{name:"@s",objective:"rolls"},color:"dark_green"},{text:" Lives",color:"dark_green"}]
execute if score #rolls rolls matches 0 if score @s rolls matches 3 run tellraw @s [{text:"You rolled ",color:"gray"},{score:{name:"@s",objective:"rolls"},color:"green"},{text:" Lives",color:"green"}]
execute if score #rolls rolls matches 0 if score @s rolls matches 2 run tellraw @s [{text:"You rolled ",color:"gray"},{score:{name:"@s",objective:"rolls"},color:"yellow"},{text:" Lives",color:"yellow"}]