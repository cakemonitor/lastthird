tellraw @a {"text":"The boogeyman is being picked now!...","color":"dark_red"}
scoreboard players set @a IsBoogeyman 0
scoreboard players set @r[scores={Lives=2..}] IsBoogeyman 1
