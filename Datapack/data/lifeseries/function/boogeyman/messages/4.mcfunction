#
# Description: Fourth Boogeyman Message
# Called by: lifeseries:boogeyman/choose
# Entity @s: None
#
tellraw @a[tag=boogeyman] {text:"Other players may defend themselves.",color:"gray"}
schedule function lifeseries:boogeyman/messages/5 4s