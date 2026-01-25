execute as @a[scores={time=57601..}] run team join green @s
execute as @a[scores={time=28801..57600}] run team join yellow @s
execute as @a[scores={time=1..28800}] run team join red @s
execute as @a[scores={time=..0},tag=!out] run team join dead @s
execute as @a[scores={time=..0},tag=!out] run function thirdlife:lives/out