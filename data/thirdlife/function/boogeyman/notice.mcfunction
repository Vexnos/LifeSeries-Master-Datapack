tellraw @a {text:"The Boogeymen are being chosen in 5 minutes",color:"red"}
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s
scoreboard players set #countdown countdown 5
schedule function thirdlife:boogeyman/countdown 300s