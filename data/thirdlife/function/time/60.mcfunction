#
# Description: Add 1 hour of time to a player
# Called by: thirdlife:boogeyman/cure
# Entity @s: Player
#
# Filter players who are not out
#
scoreboard players add @s[tag=!out] time 3600
#
# Titles
#
title @s[tag=out] actionbar {text:"You have run out of time!",color:"red"}