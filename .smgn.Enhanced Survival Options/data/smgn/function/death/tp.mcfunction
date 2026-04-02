execute if score @s .smgn.score.events matches 71702001 if data storage .smgn:.death record[0] run data modify storage .smgn:.death tp set from storage .smgn:.death record[0]
execute if score @s .smgn.score.events matches 71702002 if data storage .smgn:.death record[1] run data modify storage .smgn:.death tp set from storage .smgn:.death record[1]
execute if score @s .smgn.score.events matches 71702003 if data storage .smgn:.death record[2] run data modify storage .smgn:.death tp set from storage .smgn:.death record[2]
execute if score @s .smgn.score.events matches 71702004 if data storage .smgn:.death record[3] run data modify storage .smgn:.death tp set from storage .smgn:.death record[3]
execute if score @s .smgn.score.events matches 71702005 if data storage .smgn:.death record[4] run data modify storage .smgn:.death tp set from storage .smgn:.death record[4]

execute if score @s .smgn.score.events matches 71702001..71702005 if data storage .smgn:.death tp run function smgn:death/tp/run with storage .smgn:.death tp

scoreboard players enable @s .smgn.score.events
scoreboard players set @s .smgn.score.events 0
