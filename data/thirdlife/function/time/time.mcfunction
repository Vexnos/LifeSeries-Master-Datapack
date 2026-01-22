scoreboard players remove @a[scores={time=1..}] time 1

execute as @a[tag=!out] run function thirdlife:time/hms_convert

execute as @a[team=green] run function thirdlife:time/colors/green
execute as @a[team=yellow] run function thirdlife:time/colors/yellow
execute as @a[team=red] run function thirdlife:time/colors/red

schedule function thirdlife:time/time 1s