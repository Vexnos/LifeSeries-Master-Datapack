#
# Description: Return session time
# Called by: lifeseries:main
# Entity @s: Player
#
scoreboard players operation &time hours = &time sessionTime
scoreboard players operation &time hours /= #hours hours
scoreboard players operation &time minutes = &time sessionTime
scoreboard players operation &time minutes %= #hours hours
scoreboard players operation &time minutes /= #minutes minutes
scoreboard players operation &time seconds = &time sessionTime
scoreboard players operation &time seconds %= #seconds seconds
tellraw @s [{text:"Session Time: ",color:"yellow"},{score:{name:"&time",objective:"hours"},color:"gold"},{text:":",color:"gold"},{score:{name:"&time",objective:"minutes"},color:"gold"},{text:":",color:"gold"},{score:{name:"&time",objective:"seconds"},color:"gold"}]
scoreboard players set @s getSessionTime 0