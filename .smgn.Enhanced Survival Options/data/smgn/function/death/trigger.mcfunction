
#get data
execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s store result storage .smgn:.death temp.x int 1 run data get entity @s LastDeathLocation.pos[0]
execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s store result storage .smgn:.death temp.y int 1 run data get entity @s LastDeathLocation.pos[1]
execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s store result storage .smgn:.death temp.z int 1 run data get entity @s LastDeathLocation.pos[2]

execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s if data entity @s {LastDeathLocation:{dimension:"minecraft:overworld"}} run data merge storage .smgn:.death {temp:{dimension:"minecraft:overworld"}}
execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s if data entity @s {LastDeathLocation:{dimension:"minecraft:the_nether"}} run data merge storage .smgn:.death {temp:{dimension:"minecraft:the_nether"}}
execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s if data entity @s {LastDeathLocation:{dimension:"minecraft:the_end"}} run data merge storage .smgn:.death {temp:{dimension:"minecraft:the_end"}}

#move data
execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s run data modify storage .smgn:.death record append from storage .smgn:.death temp
execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s store result score #record_count .smgn.death_record_count run data get storage .smgn:.death record
execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s if score #record_count .smgn.death_record_count matches 6.. run data remove storage .smgn:.death record[0]


execute as @a[scores={.smgn.death_pos_trigger=1..}] if entity @s run scoreboard players set @s .smgn.death_pos_trigger 0