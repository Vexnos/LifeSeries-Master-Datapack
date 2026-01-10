execute as @a[scores={time=56700..}] run team join green @s
execute as @a[scores={time=28800..56699}] run team join yellow @s
execute as @a[scores={time=1..28799}] run team join red @s
execute as @a[scores={time=..0},tag=!out] run team join dead @s
execute as @a[scores={time=..0},tag=!out] run function thirdlife:lives/out