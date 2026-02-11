#
# Description: Count down the session timer
# Called by: lifeseries:start, lifeseries:resume
# Entity @s: None
#
scoreboard players remove &time sessionTime 1
#
# If timer runs out
#
execute if score &time sessionTime matches ..0 run return run function lifeseries:pause
execute if score &time sessionTime matches ..0 run return run function lifeseries:boogeyman/fail
#
# If timer hasn't run out
#
schedule function lifeseries:time/session/count_down 1s