#
# Description: Check players are within 5 blocks of each other
# Called by: lifeseries:lifetransfer/checkplayer/lastlife, lifeseries:lifetransfer/checkplayer/limitedlife
# Entity @s: Player
#
# Add a tag to valid player
#
execute at @s as @p[tag=!out,distance=0.5..5] run tag @s add addlife
#
# Titles & Sound
#
execute unless entity @a[tag=addlife] run title @s actionbar {text:"You must be within 5 blocks of another player!",color:"red"}
execute unless entity @a[tag=addlife] at @s run playsound minecraft:entity.ender_dragon.growl master @s
#
# Transfer the life if a valid player exists
#
execute as @s if entity @a[tag=addlife] unless score #limitedlife settings matches 1 run function lifeseries:lifetransfer/addlife/lastlife
execute as @s if entity @a[tag=addlife] if score #limitedlife settings matches 1 run function lifeseries:lifetransfer/addlife/limitedlife