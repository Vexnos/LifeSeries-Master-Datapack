#
# Description: Set session timer
# Called by: thirdlife:main
# Entity &time: Player
#
# Set timer
#
scoreboard players operation &time sessionTime = @s setSessionTime
execute unless score @s setSessionTime matches -1 run scoreboard players operation &time sessionTime *= #hours hours
scoreboard players operation &set_time sessionTime = &time sessionTime
#
# Titles & Sound
#
execute unless score @s setSessionTime matches -1 run title @s actionbar [{text:"Session Time set to ",color:"gray"},{score:{name:"@s",objective:"setSessionTime"},color:"yellow"}, {text:" Hours",color:"yellow"}]
execute if score @s setSessionTime matches -1 run title @s actionbar {text:"Session timer disabled",color:"red"}
execute unless score @s setSessionTime matches -1 at @s run playsound minecraft:entity.allay.item_given master @s ~ ~ ~ 100 0
execute if score @s setSessionTime matches -1 at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 100 2
#
# Reset trigger scoreboard
#
scoreboard players set @s setSessionTime 0