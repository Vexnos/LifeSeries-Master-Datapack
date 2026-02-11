#
# Description: Display the random amount of lives to players
# Called by: lifeseries:random/roll
# Entity @s: Player
#
# Pick a random number between 2 and 6
#
execute store result score @s rolls run random value 2..6
#
# Title fade times set to 0 to allow viewing the roll
#
title @a times 0 70 0
#
# Title colours
#
execute if score @s rolls matches 4.. run title @s title {score:{name:"@s",objective:"rolls"},color:"dark_green"}
execute if score @s rolls matches 3 run title @s title {score:{name:"@s",objective:"rolls"},color:"green"}
execute if score @s rolls matches 2 run title @s title {score:{name:"@s",objective:"rolls"},color:"yellow"}
execute if score #rolls rolls matches 1.. as @s at @s run playsound minecraft:ui.button.click master @s
#
# Final roll
#
execute if score #rolls rolls matches 0 if score @s rolls matches 4.. run title @s title [{score:{name:"@s",objective:"rolls"},color:"dark_green"},{text:" Lives",color:"green"}]
execute if score #rolls rolls matches 0 if score @s rolls matches 3 run title @s title [{score:{name:"@s",objective:"rolls"},color:"green"},{text:" Lives",color:"green"}]
execute if score #rolls rolls matches 0 if score @s rolls matches 2 run title @s title [{score:{name:"@s",objective:"rolls"},color:"yellow"},{text:" Lives",color:"green"}]
execute if score #rolls rolls matches 0 as @s at @s run playsound minecraft:ui.toast.challenge_complete master @s
#
# Tellraw Message
#
execute if score #rolls rolls matches 0 if score @s rolls matches 4.. run tellraw @s [{text:"You rolled ",color:"gray"},{score:{name:"@s",objective:"rolls"},color:"dark_green"},{text:" Lives",color:"dark_green"}]
execute if score #rolls rolls matches 0 if score @s rolls matches 3 run tellraw @s [{text:"You rolled ",color:"gray"},{score:{name:"@s",objective:"rolls"},color:"green"},{text:" Lives",color:"green"}]
execute if score #rolls rolls matches 0 if score @s rolls matches 2 run tellraw @s [{text:"You rolled ",color:"gray"},{score:{name:"@s",objective:"rolls"},color:"yellow"},{text:" Lives",color:"yellow"}]