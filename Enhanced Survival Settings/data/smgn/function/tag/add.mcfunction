execute as @a[tag=!.smgn.ESO] if entity @s run gamerule send_command_feedback false

execute as @a[tag=!.smgn.ESO] if entity @s run function smgn:score/mk

execute as @a[tag=!.smgn.ESO] if entity @s run tag @s add .smgn.ESO