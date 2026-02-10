#
# Description: Players who are on 0 lives or 0 time are out
# Called by: thirdlife:lives/death, thirdlife:time/color
# Entity @s: Player
#
# Spectator Mode
#
gamemode spectator @s
#
# Titles, Particles, Sound
#
execute unless score #limitedlife settings matches 1 run title @s title {text:"You ran out of Lives!",color:"red",bold:true}
execute if score #limitedlife settings matches 1 run title @s title {text:"You ran out of Time!",color:"red",bold:true}
execute at @s run playsound minecraft:entity.ender_dragon.growl master @s
execute at @s run summon minecraft:lightning_bolt ~ ~3 ~
execute at @s run particle explosion ~ ~1 ~ 1 1 1 0 25 force
#
# Add an 'out' tag to filter players who are out
#
tag @s add out