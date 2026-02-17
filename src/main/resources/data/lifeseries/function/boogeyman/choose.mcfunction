#
# Description: Choose Boogeymen
# Called by: lifeseries:boogeyman/suspense
# Entity @s: Player
#
# Choose amount of Boogeymen and randomly select players according to the amount to become the boogeyman
#
execute store result score #boogeymen rolls run random value 1..3
execute if score #boogeymen rolls matches 1 run tag @r[tag=!out,team=!red,limit=1] add boogeyman
execute if score #boogeymen rolls matches 2 run tag @r[tag=!out,team=!red,limit=2] add boogeyman
execute if score #boogeymen rolls matches 3 run tag @r[tag=!out,team=!red,limit=3] add boogeyman
#
# Sounds
#
execute as @a[tag=boogeyman] at @s run playsound lifeseries:boogeyman master @s
execute as @a[tag=!boogeyman] at @s run playsound lifeseries:boogeyman_not master @s
#
# Titles
#
title @a[tag=boogeyman] title {text:"The Boogeyman",color:"red"}
title @a[tag=!boogeyman] title {text:"NOT The Boogeyman",color:"green"}
title @a times 10 70 20
#
# Private tellraw messages to the boogeyman
#
schedule function lifeseries:boogeyman/messages/1 2s