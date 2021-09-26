# Basic game setup
time set day
worldborder set 500
difficulty hard
gamemode survival @a


# Create scorebaords
scoreboard objectives add HasDied deathCount
scoreboard players set @a HasDied 0

scoreboard objectives add Lives dummy
#  for debug only:
#scoreboard objectives setdisplay sidebar Lives

scoreboard objectives add givelife trigger
scoreboard players enable @a givelife

scoreboard objectives add showlives trigger
scoreboard players enable @a showlives

scoreboard objectives add IsBoogeyman dummy

scoreboard objectives add HasKilledPlayer playerKillCount
scoreboard players set @a HasKilledPlayer 0


# Setup teams
team add red
team modify red color red
team add yellow
team modify yellow color yellow
team add green
team modify green color green
team add dark_green
team modify dark_green color dark_green
team add gray
team modify gray color gray


# Give all players custom TNT recipe
recipe give @a lastthird:customtnt


# Distribute players across the map
spreadplayers 0 0 50 250 false @a


# Allocate random lives
#   setup PRNG
scoreboard objectives add random dummy
scoreboard players set #2 random 2
scoreboard players set #a random 214013
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:["rngcloud"]}
execute store result score #x random run data get entity @e[type=minecraft:area_effect_cloud,tag=rngcloud,limit=1] UUID[0] 1
#  range of 5 (+2 when used) = {2, 3, 4, 5, 6}
scoreboard players set #range random 5
#  all players are allocated a random value and corresponding team/color
execute as @a run function lastthird:randlives
execute as @a run function lastthird:namecolor

# run startsession on init (pick boogeyman & schedule end session)
execute run function lastthird:startsession
