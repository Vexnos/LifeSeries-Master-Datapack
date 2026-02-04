#
# Description: Convert raw time into hours, minutes, and seconds
# Called by: thirdlife:time/time
# Entity @s: Player
#
advancement revoke @s only thirdlife:died_to_boogeyman
scoreboard players operation @s hours = @s time
scoreboard players operation @s hours /= #hours hours
scoreboard players operation @s minutes = @s time
scoreboard players operation @s minutes %= #hours hours
scoreboard players operation @s minutes /= #minutes minutes
scoreboard players operation @s seconds = @s time
scoreboard players operation @s seconds %= #seconds seconds