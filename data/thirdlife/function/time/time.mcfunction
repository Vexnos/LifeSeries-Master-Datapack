scoreboard players remove @a[scores={time=1..}] time 1

execute as @a[tag=!out] run function thirdlife:time/hms_convert

execute as @a[team=green] run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"green"},{text:":",color:"green"},{score:{name:"@s",objective:"minutes"},color:"green"},{text:":",color:"green"},{score:{name:"@s",objective:"seconds"},color:"green"}]
execute as @a[team=yellow] run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"minutes"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"seconds"},color:"yellow"}]
execute as @a[team=red] run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"red"},{text:":",color:"red"},{score:{name:"@s",objective:"minutes"},color:"red"},{text:":",color:"red"},{score:{name:"@s",objective:"seconds"},color:"red"}]

schedule function thirdlife:time/time 1s