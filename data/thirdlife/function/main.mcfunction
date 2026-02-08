#
# Description: Handle functions and checks needed to run every tick
# Called by: #minecraft:tick
# Entity @s: None
#
# Lives
#
execute unless score #limitedlife settings matches 1 run function thirdlife:lives/lives
execute if score #limitedlife settings matches 1 run function thirdlife:time/color
#
# Kills and Deaths
#
execute as @a[scores={kills=1..}] run function thirdlife:lives/kill
execute if score #limitedlife settings matches 0 as @a[scores={deaths=1..},tag=!out] run function thirdlife:lives/death
execute if score #limitedlife settings matches 1 as @a[scores={deaths=1..},tag=!out] run function thirdlife:time/death
#
# Boogeyman Functions
#
execute if score #limitedlife settings matches 1 run scoreboard players enable @a[tag=!out] 30
execute unless score #thirdlife settings matches 1 run scoreboard players enable @a[tag=!out,tag=boogeyman] cure
execute if score #limitedlife settings matches 1 as @a[scores={30=1..}] run function thirdlife:time/30
execute unless score #thirdlife settings matches 1 as @a[scores={cure=1..}] run function thirdlife:boogeyman/cure
#
# Death Trigger for Limited Life
#
execute if score #limitedlife settings matches 1 run scoreboard players enable @a[tag=!out] death
execute if score #limitedlife settings matches 1 as @a[scores={death=1..}] run function thirdlife:time/death
#
# Give Life Triggers
#
execute if score $lifetransfer settings matches 1 run scoreboard players enable @a[tag=!out,team=!red] givelife
execute if score $lifetransfer settings matches 1 as @a[scores={givelife=1..}] run function thirdlife:lifetransfer/checkplayer
execute if score $lifetransfer settings matches 0 run scoreboard players set @a givelife 0
#
# Triggers for Admin use only
#
scoreboard players enable @a[tag=admin] start
scoreboard players enable @a[tag=admin] pause
scoreboard players enable @a[tag=admin] resume
scoreboard players enable @a[tag=admin] config
scoreboard players enable @a[tag=admin] boogeyman
scoreboard players enable @a[tag=admin] roll
scoreboard players enable @a[tag=admin] fail
scoreboard players enable @a[tag=admin] placeEnchantingTable
scoreboard players enable @a[tag=admin] placeSpawn
execute as @a[scores={start=1..}] run function thirdlife:triggers/start
execute as @a[scores={pause=1..}] run function thirdlife:triggers/pause
execute as @a[scores={resume=1..}] run function thirdlife:triggers/resume
execute as @a[scores={config=1..}] run function thirdlife:triggers/config
execute as @a[scores={boogeyman=1..}] run function thirdlife:boogeyman/trigger
execute as @a[scores={roll=1..}] run function thirdlife:random/trigger
execute as @a[scores={fail=1..}] run function thirdlife:boogeyman/fail
execute as @a[tag=admin,scores={placeEnchantingTable=1..}] run function thirdlife:enchanting_table/trigger
execute as @a[tag=admin,scores={placeSpawn=1..}] run function thirdlife:triggers/place_spawn