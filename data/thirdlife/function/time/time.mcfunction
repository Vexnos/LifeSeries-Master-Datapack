scoreboard players remove @a[scores={time=1..}] time 1

execute as @a[team=green] run title @s actionbar {score:{name:"@s",objective:"time"},color:"green"}
execute as @a[team=yellow] run title @s actionbar {score:{name:"@s",objective:"time"},color:"yellow"}
execute as @a[team=red] run title @s actionbar {score:{name:"@s",objective:"time"},color:"red"}

schedule function thirdlife:time/time 1s