execute store result storage .smgn:.trigger num int 1 run scoreboard players get @s .smgn.score.events

data modify storage .smgn:.settings weather.type set string storage .smgn:.trigger num -2 -1
data modify storage .smgn:.settings weather.lock set string storage .smgn:.trigger num -1


execute if data storage .smgn:.settings {weather:{type:"0"}} run weather clear
execute if data storage .smgn:.settings {weather:{type:"0"}} run tellraw @s [{text:"[",color:gray},{text:"ESO",color:green},{text:"]:",color:gray},{"text":" 天候が晴れになりました",color:white}]

execute if data storage .smgn:.settings {weather:{type:"1"}} run weather rain
execute if data storage .smgn:.settings {weather:{type:"1"}} run tellraw @s [{text:"[",color:gray},{text:"ESO",color:green},{text:"]:",color:gray},{"text":" 天候が雨になりました",color:white}]

execute if data storage .smgn:.settings {weather:{type:"2"}} run weather thunder
execute if data storage .smgn:.settings {weather:{type:"2"}} run tellraw @s [{text:"[",color:gray},{text:"ESO",color:green},{text:"]:",color:gray},{"text":" 天候が雷雨になりました",color:white}]

execute if data storage .smgn:.settings {weather:{lock:"0"}} run gamerule advance_weather true
execute if data storage .smgn:.settings {weather:{lock:"1"}} run gamerule advance_weather false

scoreboard players set @s .smgn.score.events 0
scoreboard players enable @s .smgn.score.events