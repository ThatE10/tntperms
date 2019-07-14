summon minecraft:area_effect_cloud ~ ~ ~ {Duration:5184000,CustomName:"\"logger\""}
scoreboard players add @p tntCounter 1
say @p almost exploded tnt without permission!
tellraw @a {"text":"[SERVER] Logged Successful"}
kill @s