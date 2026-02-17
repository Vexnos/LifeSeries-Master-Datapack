#
# Description: Check players are not red and not out
# Called by: lifeseries:lifetransfer/checkplayer
# Entity @s: Player
#
execute if entity @s[scores={time=1..3600}] run title @s actionbar {text:"You cannot transfer your last hour!",color:"red"}
execute as @s[scores={time=1..3600}] at @s run playsound minecraft:entity.ender_dragon.growl master @s
execute if entity @s[tag=out] run title @s actionbar {text:"You have no time to transfer!",color:"red"}
execute as @s[tag=out] at @s run playsound minecraft:entity.ender_dragon.growl master @s
#
# Run additional checks if the player is currently valid
#
execute as @s[scores={time=3601..},tag=!out] run function lifeseries:lifetransfer/givelife