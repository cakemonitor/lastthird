tellraw @a [{"text":"The session is over!","color":"red"}]

execute as @a[scores={IsBoogeyman=1}] run tellraw @a {"text":"","extra":[{"selector":"@s"},{"text":" did not get cured and drops to "},{"text":"1","color":"red"},{"text":" life!"}]}
scoreboard players set @a[scores={IsBoogeyman=1}] Lives 1
execute as @a[scores={IsBoogeyman=1}] run function lastthird:namecolor
title @a[scores={IsBoogeyman=1}] title [{"text":"You are cursed!","bold":true,"color":"dark_red"}]
title @a[scores={IsBoogeyman=1}] subtitle [{"text":"You are now on your last life!"}]
scoreboard players set @a IsBoogeyman 0

tellraw @a ["Run ",{"text":"/function lastthird:startsession","bold":true,"color":"gold"}," to start the next session"]
