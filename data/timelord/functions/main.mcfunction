## main
execute as @e[tag=timelord] run function timelord:passivepowers

## beacon and eye of ender makes untempered schism
execute as @e[type=item,nbt={Item:{id:"minecraft:beacon",Count:1b}}] at @s if entity @e[type=item,distance=..0.3,nbt={Item:{id:"minecraft:ender_eye",Count:1b}}] run tag @e[distance=..0.3,type=item] add createschism
execute at @e[tag=createschism,limit=1] align xyz run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["schism"],ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:7}}]}
execute at @e[tag=createschism,limit=1] run playsound minecraft:block.beacon.activate master @a[distance=..20] ~ ~ ~ 10 1
kill @e[tag=createschism]
execute at @e[tag=schism] run spreadplayers ~ ~ 0 1000 false @e[distance=..0.5,tag=!schism]
execute at @e[tag=schism] run particle minecraft:mycelium ~ ~ ~ 3 0 3 0.5 20
execute at @e[tag=schism] run scoreboard players add @e[distance=..10] regenergy 2
execute at @e[tag=schism] as @e[distance=..3,tag=!timelord,tag=!schism,type=!item,scores={regenergy=1000..}] run function timelord:becometimelord
execute at @e[tag=schism] if block ~ ~-1 ~ air run kill @e[tag=schism,limit=1,sort=nearest]
