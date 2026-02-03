#
# Description: Notice for the boogeymen being chosen
# Called by: thirdlife:boogeyman/notice
# Entity @s: Player
#
tellraw @a {text:"The Boogeymen are being chosen...",color:"red"}
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s