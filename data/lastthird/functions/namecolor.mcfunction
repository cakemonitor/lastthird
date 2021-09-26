execute if entity @s[scores={Lives=..0}] run team join gray @s
execute if entity @s[scores={Lives=1}] run team join red @s
execute if entity @s[scores={Lives=2}] run team join yellow @s
execute if entity @s[scores={Lives=3}] run team join green @s
execute if entity @s[scores={Lives=4..}] run team join dark_green @s

execute run function lastthird:showlives
