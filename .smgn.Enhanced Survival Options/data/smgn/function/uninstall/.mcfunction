data remove storage .smgn:.trigger num
data remove storage .smgn:.settings weather

function smgn:score/rm



gamerule advance_weather true
gamerule send_command_feedback true

tellraw @a [{text:"[",color:gray},{text:"ESO",color:green},{text:"]:",color:gray},{text:" Enhanced Survival Options is disabled.",color:white}]


datapack disable "file/Enhanced Survival Settings"
scoreboard players set @a .smgn.score.events 0
#execute as @a run tag @s remove .smgn.ESO