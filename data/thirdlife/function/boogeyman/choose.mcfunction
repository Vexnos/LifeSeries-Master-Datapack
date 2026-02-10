#
# Description: Choose Boogeymen
# Called by: thirdlife:boogeyman/suspense
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
execute as @a[tag=boogeyman] at @s run playsound lastlife:boogeyman master @s
execute as @a[tag=!boogeyman] at @s run playsound lastlife:boogeyman_not master @s
#
# Titles
#
title @a[tag=boogeyman] title {text:"The Boogeyman",color:"red"}
title @a[tag=!boogeyman] title {text:"NOT The Boogeyman",color:"green"}
title @a times 10 70 20
#
# Private tellraw message to the boogeyman
#
tellraw @a[tag=boogeyman] [{text:"You are the ",color:"gray"},{text:"Boogeyman",color:"red"},{text:". You must by any means necessary kill a ",color:"gray"},{text:"Green ",color:"green"},{text:"or ",color:"gray"},{text:"Yellow ",color:"yellow"},{text:"player in this session to be cured. If you should fail, you will turn ",color:"gray"},{text:"Red ",color:"red"},{text:"next session. All alliances and ties are severed while you are the Boogeyman.",color:"gray"}]