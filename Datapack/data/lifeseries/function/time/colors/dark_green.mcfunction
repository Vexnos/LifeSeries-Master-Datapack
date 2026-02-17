#
# Description: Limited life timer display for dark_green players
# Called by: lifeseries:time/time
# Entity @s: Player
#
# Display if Seconds, Minutes and Hours are a Single Digit
#
execute if score @s seconds matches ..9 if score @s minutes matches ..9 if score @s hours matches ..9 run title @s actionbar [{text:"0",color:"dark_green"},{score:{name:"@s",objective:"hours"},color:"dark_green"},{text:":0",color:"dark_green"},{score:{name:"@s",objective:"minutes"},color:"dark_green"},{text:":0",color:"dark_green"},{score:{name:"@s",objective:"seconds"},color:"dark_green"}]
#
# Display if Seconds are a Double Digit, but Minutes and Hours are a Single Digit
#
execute if score @s seconds matches 10.. if score @s minutes matches ..9 if score @s hours matches ..9 run title @s actionbar [{text:"0",color:"dark_green"},{score:{name:"@s",objective:"hours"},color:"dark_green"},{text:":0",color:"dark_green"},{score:{name:"@s",objective:"minutes"},color:"dark_green"},{text:":",color:"dark_green"},{score:{name:"@s",objective:"seconds"},color:"dark_green"}]
#
# Dipslay if Seconds and Hours are a Single Digit, but Minutes are a Double Digit
#
execute if score @s seconds matches ..9 if score @s minutes matches 10.. if score @s hours matches ..9 run title @s actionbar [{text:"0",color:"dark_green"},{score:{name:"@s",objective:"hours"},color:"dark_green"},{text:":",color:"dark_green"},{score:{name:"@s",objective:"minutes"},color:"dark_green"},{text:":0",color:"dark_green"},{score:{name:"@s",objective:"seconds"},color:"dark_green"}]
#
# Display if Seconds and Minutes are Double Digits, but Hours are a Single Digit
#
execute if score @s seconds matches 10.. if score @s minutes matches 10.. if score @s hours matches ..9 run title @s actionbar [{text:"0",color:"dark_green"},{score:{name:"@s",objective:"hours"},color:"dark_green"},{text:":",color:"dark_green"},{score:{name:"@s",objective:"minutes"},color:"dark_green"},{text:":",color:"dark_green"},{score:{name:"@s",objective:"seconds"},color:"dark_green"}]
#
# Display if Seconds, Minutes and (somehow) Hours are Double Digits
#
execute if score @s seconds matches 10.. if score @s minutes matches 10.. if score @s hours matches 10.. run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"dark_green"},{text:":",color:"dark_green"},{score:{name:"@s",objective:"minutes"},color:"dark_green"},{text:":",color:"dark_green"},{score:{name:"@s",objective:"seconds"},color:"dark_green"}]
#
# Display if Hours are Double Digits, but Seconds and Minutes are Single Digits
#
execute if score @s seconds matches ..9 if score @s minutes matches ..9 if score @s hours matches 10.. run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"dark_green"},{text:":0",color:"dark_green"},{score:{name:"@s",objective:"minutes"},color:"dark_green"},{text:":0",color:"dark_green"},{score:{name:"@s",objective:"seconds"},color:"dark_green"}]
#
# Display if Hours and Seconds are Double Digits, but Minutes are a Single Digit
#
execute if score @s seconds matches 10.. if score @s minutes matches ..9 if score @s hours matches 10.. run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"dark_green"},{text:":0",color:"dark_green"},{score:{name:"@s",objective:"minutes"},color:"dark_green"},{text:":",color:"dark_green"},{score:{name:"@s",objective:"seconds"},color:"dark_green"}]
#
# Display if Hours and Minutes are Double Digits, but Seconds are a Single Digit
#
execute if score @s seconds matches ..9 if score @s minutes matches 10.. if score @s hours matches 10.. run title @s actionbar [{score:{name:"@s",objective:"hours"},color:"dark_green"},{text:":",color:"dark_green"},{score:{name:"@s",objective:"minutes"},color:"dark_green"},{text:":0",color:"dark_green"},{score:{name:"@s",objective:"seconds"},color:"dark_green"}]