#
# Description: Limited life timer display for yellow players
# Called by: thirdlife:time/time
# Entity @s: Player
#
# Display if Seconds, Minutes and Hours are a Single Digit
#
execute if score @s seconds matches ..9 if score @s minutes matches ..9 if score @s hours matches ..9 run title @s actionbar [{text:"0",color:"yellow"},{score:{name:"@s",objective:"hours"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"minutes"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"seconds"},color:"yellow"}]
#
# Display if Seconds are a Double Digit, but Minutes and Hours are a Single Digit
#
execute if score @s seconds matches 10.. if score @s minutes matches ..9 if score @s hours matches ..9 run title @s actionbar [{text:"0",color:"yellow"},{score:{name:"@s",objective:"hours"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"minutes"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"seconds"},color:"yellow"}]
#
# Dipslay if Seconds and Hours are a Single Digit, but Minutes are a Double Digit
#
execute if score @s seconds matches ..9 if score @s minutes matches 10.. if score @s hours matches ..9 run title @s actionbar [{text:"0",color:"yellow"},{score:{name:"@s",objective:"hours"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"minutes"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"seconds"},color:"yellow"}]
#
# Display if Seconds and Minutes are Double Digits, but Hours are a Single Digit
#
execute if score @s seconds matches 10.. if score @s minutes matches 10.. if score @s hours matches ..9 run title @s actionbar [{text:"0",color:"yellow"},{score:{name:"@s",objective:"hours"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"minutes"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"seconds"},color:"yellow"}]
#
# Display if Seconds, Minutes and (somehow) Hours are Double Digits
#
execute if score @s seconds matches 10.. if score @s minutes matches 10.. if score @s hours matches 10.. run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"minutes"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"seconds"},color:"yellow"}]
#
# Display if Hours are Double Digits, but Seconds and Minutes are Single Digits
#
execute if score @s seconds matches ..9 if score @s minutes matches ..9 if score @s hours matches 10.. run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"minutes"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"seconds"},color:"yellow"}]
#
# Display if Hours and Seconds are Double Digits, but Minutes are a Single Digit
#
execute if score @s seconds matches 10.. if score @s minutes matches ..9 if score @s hours matches 10.. run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"minutes"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"seconds"},color:"yellow"}]
#
# Display if Hours and Minutes are Double Digits, but Seconds are a Single Digit
#
execute if score @s seconds matches ..9 if score @s minutes matches 10.. if score @s hours matches 10.. run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"minutes"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"seconds"},color:"yellow"}]