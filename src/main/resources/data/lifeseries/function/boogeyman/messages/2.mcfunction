#
# Description: Second Boogeyman Message
# Called by: lifeseries:boogeyman/choose
# Entity @s: None
#
tellraw @a[tag=boogeyman] [{text:"You must by any means necessary kill a ",color:"gray"},{text:"Green ",color:"green"},{text:"or ",color:"gray"},{text:"Yellow ",color:"yellow"},{text:"player this session to be cured."}]
schedule function lifeseries:boogeyman/messages/3 4s