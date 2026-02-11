#
# Description: Check players are not red and not out
# Called by: lifeseries:main
# Entity @s: Player
#
execute if entity @s[team=red] run title @s actionbar {text:"You cannot transfer your last life!",color:"red"}
execute as @s[team=red] at @s run playsound minecraft:entity.ender_dragon.growl master @s
execute if entity @s[tag=out] run title @s actionbar {text:"You have no lives to transfer!",color:"red"}
execute as @s[tag=out] at @s run playsound minecraft:entity.ender_dragon.growl master @s
#
# Run additional checks if the player is currently valid
#
execute as @s[team=!red,tag=!out] run function lifeseries:lifetransfer/givelife
#
# Reset trigger score
#
scoreboard players set @s givelife 0