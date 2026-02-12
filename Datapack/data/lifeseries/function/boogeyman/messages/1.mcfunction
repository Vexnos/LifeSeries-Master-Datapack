#
# Description: First Boogeyman Message
# Called by: lifeseries:boogeyman/choose
# Entity @s: None
#
tellraw @a[tag=boogeyman] [{text:"You are the ",color:"gray"},{text:"Boogeyman",color:"red"},{text:".",color:"gray"}]
schedule function lifeseries:boogeyman/messages/2 3s