#
# Description: Countdown towards the boogeyman being chosen
# Called by: lifeseries:boogeyman/5_minutes
# Entity @s: Player
#
# Countdown colours
#
execute if score #countdown countdown matches 4.. run title @a title {score:{name:"#countdown",objective:"countdown"},color:"dark_green"}
execute if score #countdown countdown matches 3 run title @a title {score:{name:"#countdown",objective:"countdown"},color:"green"}
execute if score #countdown countdown matches 2 run title @a title {score:{name:"#countdown",objective:"countdown"},color:"yellow"}
execute if score #countdown countdown matches 1 run title @a title {score:{name:"#countdown",objective:"countdown"},color:"red"}
#
# Sound
#
execute unless score #pastlife settings matches 1 as @a at @s run playsound minecraft:ui.button.click master @s
execute if score #pastlife settings matches 1 as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s
#
# Counts down until countdown score reaches 0, then triggers suspense function
#
scoreboard players remove #countdown countdown 1
execute if score #countdown countdown matches 0 run schedule function lifeseries:boogeyman/suspense 2s
execute unless score #countdown countdown matches 0 run schedule function lifeseries:boogeyman/countdown 2s