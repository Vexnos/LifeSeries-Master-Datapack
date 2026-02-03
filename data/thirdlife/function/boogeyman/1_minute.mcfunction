#
# Description: 1 Minute Notice for the Boogeyman
# Called by: thirdlife:boogeyman/notice
# Entity @s: Player
#
tellraw @a {text:"The Boogeymen are being chosen in 1 minute",color:"red"}
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s