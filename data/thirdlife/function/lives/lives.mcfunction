#
# Description: Put players on teams based on their lives
# Called by: thirdlife:main
# Entity @s: Player
#
execute as @a[scores={lives=4..}] run team join dark_green @s
execute as @a[scores={lives=3}] run team join green @s
execute as @a[scores={lives=2}] run team join yellow @s
execute as @a[scores={lives=1}] run team join red @s
execute as @a[scores={lives=0}] run team join dead @s