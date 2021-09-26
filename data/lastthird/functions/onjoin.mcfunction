tellraw @s ["","Welcome to ",{"text":"Last Third","bold":true,"color":"aqua"},"!"]
#tellraw @s ["","Once all players are online run ",{"text":"/function lastthird:init","bold":true,"color":"gold"}," to start the game"]

tellraw @s ["",{"text":"/trigger showlives","bold":true,"color":"yellow"}," to see your lives."]
tellraw @s ["",{"text":"/trigger givelife","bold":true,"color":"yellow"}," to give a life (nearest player, 10 blocks)"]


time set day
gamemode creative @s
spreadplayers 0 0 2 25 false @s
tag @s add Joined
