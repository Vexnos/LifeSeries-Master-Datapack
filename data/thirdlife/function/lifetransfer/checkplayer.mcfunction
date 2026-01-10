execute if entity @s[team=red] run title @s actionbar {text:"You cannot transfer your last life!",color:"red"}
execute as @s[team=red] at @s run playsound minecraft:entity.ender_dragon.growl master @s
execute if entity @s[tag=out] run title @s actionbar {text:"You have no lives to transfer!",color:"red"}
execute as @s[tag=out] at @s run playsound minecraft:entity.ender_dragon.growl master @s

execute as @s[team=!red,tag=!out] run function thirdlife:lifetransfer/givelife

scoreboard players set @s givelife 0