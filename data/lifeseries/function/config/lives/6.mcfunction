#
# Description: Set players' lives to 6
# Called by: lifeseries:settings
# Entity @s: Player
#
# If not on Limited Life
#
execute unless score #limitedlife settings matches 1 run scoreboard players set @a lives 6
execute unless score #limitedlife settings matches 1 run title @s actionbar [{text:"Set Lives to ",color:"yellow"},{text:"6",color:"dark_green"}]
execute unless score #limitedlife settings matches 1 run execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 2
#
# If on Limited Life
#
execute if score #limitedlife settings matches 1 run title @s actionbar {text:"Cannot set lives on Limited Life",color:"red"}
execute if score #limitedlife settings matches 1 run execute at @s run playsound minecraft:block.note_block.didgeridoo master @s