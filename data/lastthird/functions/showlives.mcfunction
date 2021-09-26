execute if entity @s[scores={Lives=..0}] run title @s title [{"text":"Lives: "},{"text":"0","bold":true,"color":"gray"}]
execute if entity @s[scores={Lives=..0}] run title @s subtitle [{"text":"You are out of the game."}]
execute if entity @s[scores={Lives=1}] run title @s title [{"text":"Lives: "},{"score":{"name":"@s","objective":"Lives"},"bold":true,"color":"red"}]
execute if entity @s[scores={Lives=1}] run title @s subtitle [{"text":"You must hunt "},{"text":"all","color":"red"},{"text":" other players!"}]
execute if entity @s[scores={Lives=2}] run title @s title [{"text":"Lives: "},{"score":{"name":"@s","objective":"Lives"},"bold":true,"color":"yellow"}]
execute if entity @s[scores={Lives=3}] run title @s title [{"text":"Lives: "},{"score":{"name":"@s","objective":"Lives"},"bold":true,"color":"green"}]
execute if entity @s[scores={Lives=4..}] run title @s title [{"text":"Lives: "},{"score":{"name":"@s","objective":"Lives"},"bold":true,"color":"dark_green"}]

scoreboard players set @s showlives 0
scoreboard players enable @s showlives
