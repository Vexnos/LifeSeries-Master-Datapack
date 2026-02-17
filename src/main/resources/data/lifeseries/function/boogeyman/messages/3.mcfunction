#
# Description: Third Boogeyman Message
# Called by: lifeseries:boogeyman/choose
# Entity @s: None
#
tellraw @a[tag=boogeyman] [{text:"If you fail, next session you will become a ",color:"gray"},{text:"red",color:"red"},{text:" name.",color:"gray"}]
schedule function lifeseries:boogeyman/messages/4 4s