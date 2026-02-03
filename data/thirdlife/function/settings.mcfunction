# 
# Description: Config Menu for Admin
# Called by: thirdlife:triggers/config
# Entity @s: Player
#
tellraw @s {text:"----------------------",color:"gray"}
tellraw @s {text:"Welcome to Third Life!",color:"gray"}
tellraw @s {text:"Please select a mode:",color:"gray"}
tellraw @s {text:"Third Life",color:"green",hover_event:{action:"show_text",value:{text:"3 Lives, No Boogeyman, No Life Transferring",color:"green"}},click_event:{action:"run_command",command:"/execute as @s run function thirdlife:config/thirdlife"}}
tellraw @s {text:"Last Life",color:"yellow",hover_event:{action:"show_text",value:{text:"Random Lives, Boogeyman, Life Transferring",color:"yellow"}},click_event:{action:"run_command",command:"/execute as @s run function thirdlife:config/lastlife"}}
tellraw @s {text:"Limited Life",color:"red",hover_event:{action:"show_text",value:{text:"24 Hours to Live, Boogeyman, No Life Transferring",color:"red"}},click_event:{action:"run_command",command:"/execute as @s run function thirdlife:config/limitedlife"}}
tellraw @s {text:"----------------------",color:"gray"}
tellraw @s {text:"Gameplay Settings",color:"gray"}
tellraw @s [{text:"Boogeyman: ",color:"gray"},{text:"Enabled",color:"green",hover_event:{action:"show_text",value:{text:"Enable the Boogeyman",color:"green"}},click_event:{action:"run_command",command:"/execute as @s run function thirdlife:config/boogeyman/enabled"}},{text:" | ",color:"gray"},{text:"Disabled",color:"red",hover_event:{action:"show_text",value:{text:"Disable the Boogeyman",color:"red"}},click_event:{action:"run_command",command:"/execute as @s run function thirdlife:config/boogeyman/disabled"}}]
tellraw @s [{text:"Life Transferring: ",color:"gray"},{text:"Enabled",color:"green",hover_event:{action:"show_text",value:{text:"Enable Life Transferring",color:"green"}},click_event:{action:"run_command",command:"/execute as @s run function thirdlife:config/lifetransfer/enabled"}},{text:" | ",color:"gray"},{text:"Disabled",color:"red",hover_event:{action:"show_text",value:{text:"Disable Life Transferring",color:"red"}},click_event:{action:"run_command",command:"/execute as @s run function thirdlife:config/lifetransfer/disabled"}}]
tellraw @s [{text:"Difficulty: ",color:"gray"},{text:"Easy",color:"green",click_event:{action:"run_command",command:"/difficulty easy"}},{text:" | ",color:"gray"},{text:"Normal",color:"yellow",click_event:{action:"run_command",command:"/difficulty normal"}},{text:" | ",color:"gray"},{text:"Hard",color:"red",click_event:{action:"run_command",command:"/difficulty hard"}}]
tellraw @s {text:"----------------------",color:"gray"}