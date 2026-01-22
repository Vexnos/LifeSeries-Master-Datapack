# Scoreboards
scoreboard objectives add lives dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add kills minecraft.custom:minecraft.player_kills
scoreboard objectives add settings dummy
scoreboard objectives add rolls dummy
scoreboard objectives add givelife trigger
scoreboard objectives add countdown dummy
scoreboard objectives add time dummy
scoreboard objectives add 30 trigger
scoreboard objectives add death trigger
scoreboard objectives add cure trigger
scoreboard objectives add seconds dummy
scoreboard objectives add minutes dummy
scoreboard objectives add hours dummy
scoreboard objectives add pause trigger
scoreboard objectives add resume trigger
scoreboard objectives add config trigger
scoreboard objectives add start trigger
scoreboard objectives add hp health {text:"❤",color:"red"}
scoreboard objectives setdisplay below_name hp

scoreboard players set #seconds seconds 60
scoreboard players set #minutes minutes 60
scoreboard players set #hours hours 3600

# Teams
team add dark_green
team modify dark_green color dark_green

team add green
team modify green color green

team add yellow
team modify yellow color yellow

team add red
team modify red color red

team add dead
team modify dead color gray