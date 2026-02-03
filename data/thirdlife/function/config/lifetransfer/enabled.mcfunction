#
# Description: Enable life transferring from config
# Called by: thirdlife:settings
# Player @s: Player
#
# If Limited Life is Disabled
#
execute if score #limitedlife settings matches 0 run scoreboard players set $lifetransfer settings 1
execute if score #limitedlife settings matches 0 run title @s actionbar {text:"Life Transferring Enabled",color:"green"}
execute if score #limitedlife settings matches 0 run execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 2
#
# If Limited Life is Enabled
#
execute if score #limitedlife settings matches 1 run title @s actionbar {text:"Life Transferring Cannot be Enabled or Disabled for Limited Life",color:"red"}
execute if score #limitedlife settings matches 1 run execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0