#
# Description: Notice for the boogeymen being chosen
# Called by: lifeseries:boogeyman/5_minutes
# Entity @s: Player
#
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s
tellraw @a {text:"The Boogeymen are about to be chosen...",color:"dark_red"}