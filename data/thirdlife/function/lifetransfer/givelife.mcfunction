execute at @s as @p[tag=!out,distance=0.5..5] run tag @s add addlife
execute unless entity @a[tag=addlife] run title @s actionbar {text:"You must be within 5 blocks of another player!",color:"red"}
execute unless entity @a[tag=addlife] at @s run playsound minecraft:entity.ender_dragon.growl master @s
execute as @s if entity @a[tag=addlife] run function thirdlife:lifetransfer/addlife