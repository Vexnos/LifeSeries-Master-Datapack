#
# Description: Notice for the boogeymen being chosen
# Called by: lifeseries:boogeyman/notice
# Entity @s: Player
#
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s
execute unless score #pastlife settings matches 1 run return run tellraw @a {text:"The Boogeymen are being chosen...",color:"red"}
execute if score #pastlife settings matches 1 run return run tellraw @a {text:"The Boogeymen are being chosen...",color:"dark_red"}