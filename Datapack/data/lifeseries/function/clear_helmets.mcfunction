#
# Description: Clear helmets from players every 5 seconds
# Called by: lifeseries:init
# Entity @s: Player
#
schedule function lifeseries:clear_helmets 5s
clear @a leather_helmet
clear @a copper_helmet
clear @a chainmail_helmet
clear @a golden_helmet
clear @a iron_helmet
clear @a diamond_helmet
clear @a netherite_helmet
clear @a elytra