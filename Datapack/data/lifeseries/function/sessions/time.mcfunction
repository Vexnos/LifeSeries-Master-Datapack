#
# Description: Count down the session timer
# Called by: lifeseries:sessions/start, lifeseries:sessions/resume
# Entity @s: None
#
scoreboard players remove &time sessionTime 1
#
# If timer runs out
#
execute if score &time sessionTime matches ..0 run return run function lifeseries:sessions/end
#
# If timer hasn't run out
#
schedule function lifeseries:sessions/time 1s