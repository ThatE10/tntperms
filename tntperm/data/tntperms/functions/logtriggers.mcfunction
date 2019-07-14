#Trig1 See Logs
execute as @a[scores={loggerTnt=1}] run tellraw @p {"text":"Click to check tnt logs within a 3 block radius.  Formula [Age = x] x/72,000 to find how many hours ago it happend, also if you want to find the minutes multiple the decimals by 60 but due to server lagg this is usually off by a bit","color":"yellow","clickEvent":{"action":"run_command","value":"/execute as @e[type=minecraft:area_effect_cloud,name=logger,distance=..3] run data get entity @s"}}
#Trig2 Add Perms
execute as @a[scores={loggerTnt=2}] at @s positioned ^ ^ ^4 run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 100 1
execute as @a[scores={loggerTnt=2}] at @s positioned ^ ^ ^4 run team join tntPerm @a[distance=..2] 
execute as @a[scores={loggerTnt=2}] at @s positioned ^ ^ ^4 run say @e[distance=..2] Now has tnt perms!
#Trig3 Remove Perms
execute as @a[scores={loggerTnt=3}] at @s positioned ^ ^ ^4 run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 100 1
execute as @a[scores={loggerTnt=3}] at @s positioned ^ ^ ^4 run team leave @a[distance=..2]
execute as @a[scores={loggerTnt=3}] at @s positioned ^ ^ ^4 run say @e[distance=..2] No longer tnt perms!
#Trig4 Delete Logs
execute as @a[scores={loggerTnt=4}] at @s positioned ^ ^ ^4 run w @s You removed: @e[name=logger,distance=..3,type=area_effect_cloud]
execute as @a[scores={loggerTnt=4}] at @s run kill @e[distance=..3,name=logger,type=minecraft:area_effect_cloud]
#Resets 
scoreboard players reset @a[scores={loggerTnt=1..}]