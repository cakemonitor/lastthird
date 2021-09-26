scoreboard players operation #x random *= #a random
scoreboard players add #x random 2531011

scoreboard players operation @s Lives = #x random
scoreboard players operation @s Lives /= #2 random
scoreboard players add @s Lives 1073741824
scoreboard players operation @s Lives %= #range random
scoreboard players add @s Lives 2
