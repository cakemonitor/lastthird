# give 1 life to nearest other player
scoreboard players add @p[distance=0.01..10] Lives 1
execute as @p[distance=0.01..10] run function lastthird:namecolor

# remove 1 life from self
scoreboard players remove @s Lives 1
execute run function lastthird:namecolor

playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 25 1 1

# reset trigger
scoreboard players set @s givelife 0
scoreboard players enable @s givelife
