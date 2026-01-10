tellraw @a[tag=admin] {text:"----------------------",color:"gray"}
tellraw @a[tag=admin] {text:"Welcome to Third Life!",color:"gray"}
tellraw @a[tag=admin] {text:"Please select a mode:",color:"gray"}
tellraw @a[tag=admin] {text:"Third Life",color:"green",hover_event:{action:"show_text",value:{text:"3 Lives, no Boogeyman",color:"green"}},click_event:{action:"run_command",command:"/execute as @s run function thirdlife:config/thirdlife"}}
tellraw @a[tag=admin] {text:"Last Life",color:"yellow",hover_event:{action:"show_text",value:{text:"Random Lives, Boogeyman, Life Transferring",color:"yellow"}},click_event:{action:"run_command",command:"/execute as @a run function thirdlife:config/lastlife"}}
tellraw @a[tag=admin] {text:"Limited Life",color:"red"}
tellraw @a[tag=admin] {text:"----------------------",color:"gray"}