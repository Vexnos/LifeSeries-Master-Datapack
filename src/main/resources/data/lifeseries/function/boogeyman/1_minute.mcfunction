#
# Description: 1 Minute Notice for the Boogeyman
# Called by: lifeseries:boogeyman/5_minutes
# Entity @s: Player
#
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s
tellraw @a {text:"The Boogeymen are being chosen in 1 minute",color:"dark_red"}