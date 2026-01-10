execute store result score #boogeymen rolls run random value 1..2

execute if score #boogeymen rolls matches 1 run tag @r[tag=!out,team=!red,limit=1] add boogeyman
execute if score #boogeymen rolls matches 2 run tag @r[tag=!out,team=!red,limit=2] add boogeyman
execute as @a[tag=boogeyman] at @s run playsound minecraft:entity.wither.spawn master @s
execute as @a[tag=!boogeyman] at @s run playsound minecraft:entity.experience_orb.pickup master @s

title @a[tag=boogeyman] title {text:"The Boogeyman",color:"red"}
title @a[tag=!boogeyman] title {text:"NOT The Boogeyman",color:"green"}

tellraw @a[tag=boogeyman] [{text:"You are the ",color:"gray"},{text:"Boogeyman",color:"red"},{text:". You must kill one player in this session to be cured. If you should fail, you will turn ",color:"gray"},{text:"Red ",color:"red"},{text:"the next session. All alliances and ties are severed while you are the Boogeyman",color:"gray"}]