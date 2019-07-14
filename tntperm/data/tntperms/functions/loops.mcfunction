scoreboard players enable @a[team=Staff] loggerTnt
execute as @e[type=tnt,nbt={Fuse:70s}] at @s if entity @p[team=!tntPerm] run function tntperms:noperm
execute as @e[type=tnt,nbt={Fuse:70s}] at @s if entity @p[team=tntPerm] run function tntperms:perm
execute as @e[type=tnt_minecart,nbt={TNTFuse:70}] at @s if entity @p[team=!tntPerm] run function tntperms:noperm
execute as @e[type=tnt_minecart,nbt={TNTFuse:70}] at @s if entity @p[team=tntPerm] run function tntperms:perm