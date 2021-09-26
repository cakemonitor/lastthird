execute if entity @e[type=minecraft:player,scores={HasDied=1}] as @a[scores={HasDied=1}] run scoreboard players remove @s Lives 1
execute if entity @e[type=minecraft:player,scores={HasDied=1}] as @a[scores={HasDied=1}] run function lastthird:namecolor
execute if entity @e[type=minecraft:player,scores={HasDied=1}] as @a[scores={HasDied=1}] run scoreboard players set @s HasDied 0

execute as @a[scores={Lives=0}] run gamemode spectator
execute as @a[scores={Lives=0}] run function lastthird:namecolor
execute as @a[scores={Lives=0}] run scoreboard players set @s Lives -1

execute as @a[scores={givelife=..-1,Lives=1..}] at @s run function lastthird:givelife
execute as @a[scores={givelife=1..,Lives=1..}] at @s run function lastthird:givelife

execute as @a[scores={HasKilledPlayer=1,IsBoogeyman=1}] run function lastthird:boogeymankill
execute as @a[scores={HasKilledPlayer=1}] run scoreboard players set @s HasKilledPlayer 0

execute as @a[scores={showlives=..-1}] at @s run function lastthird:showlives
execute as @a[scores={showlives=1..}] at @s run function lastthird:showlives

execute as @a[tag=!Joined] run function lastthird:onjoin
