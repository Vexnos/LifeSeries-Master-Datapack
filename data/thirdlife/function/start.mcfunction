#
# Description: Function for starting the game, only used once
# Called by: thirdlife:triggers/start
# Entity @s: None
#
# Gamerules
#
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
execute unless score #lastlife settings matches 1 run gamerule pvp true
#
# Random Roll
#
execute if score #lastlife settings matches 1 run scoreboard players set #rolls rolls 120
execute if score #lastlife settings matches 1 run schedule function thirdlife:random/notice 120s
execute if score #lastlife settings matches 1 run tellraw @a {text:"Randomly Generating Lives in 2 Minutes",color:"gray"}
execute if score #lastlife settings matches 1 as @a at @s run playsound minecraft:ui.button.click master @s
#
# Boogeyman
#
execute if score $boogeyman settings matches 1 run schedule function thirdlife:boogeyman/notice 300s
#
# Grace Period Resistance in Last Life
#
execute if score #lastlife settings matches 1 run effect give @a resistance 120 9 true
#
# Scores
#
execute if score #limitedlife settings matches 0 run scoreboard objectives setdisplay list lives
execute if score #limitedlife settings matches 1 run scoreboard objectives setdisplay list
#
# Timer for Limited Life
#
execute if score #limitedlife settings matches 1 run function thirdlife:time/time
#
# Title
#
title @a actionbar {text:"Session Started",color:"green"}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s
#
# Rules displayed for admin only
#
execute if score #thirdlife settings matches 1 run tellraw @a[tag=admin] [{text:"3 Lives to Live. ",color:"gray"},{text:"Green ",color:"green"},{text:"and ",color:"gray"},{text:"Yellow ",color:"yellow"},{text:"players cannot kill other players with the exception of self defense. "},{text:"Red ",color:"red"},{text:"players are hostile to everyone and can kill other players.",color:"gray"}]
execute if score #lastlife settings matches 1 run tellraw @a[tag=admin] [{text:"2-6 Lives to Live. ",color:"gray"},{text:"Dark Green ",color:"dark_green"},{text:", ",color:"gray"},{text:"Green ",color:"green"},{text:", and ",color:"gray"},{text:"Yellow ",color:"yellow"},{text:"players cannot kill other players with the exception of self defense. "},{text:"Red ",color:"red"},{text:"players are hostile to everyone and can kill other players.",color:"gray"}]
execute if score #limitedlife settings matches 1 run tellraw @a[tag=admin] [{text:"24 Hours to Live. ",color:"gray"},{text:"Green ",color:"green"},{text:"players cannot kill other players with the exception of self defense. "},{text:"Yellow ",color:"yellow"},{text:"players can kill ",color:"gray"},{text:"Green ",color:"green"},{text:"players and ",color:"gray"},{text:"Red ",color:"red"},{text:"players can kill anyone.",color:"gray"}]