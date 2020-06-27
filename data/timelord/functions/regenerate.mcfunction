## regenerate
scoreboard players set @s regenning 220
effect clear @s
execute at @s run particle flame ~ ~ ~ 1 1 1 0 10000 normal
execute at @s run particle flame ~ ~ ~ 1 1 1 1 10000 normal
execute at @s run particle lava ~ ~ ~ 1 1 1 0 100
execute at @s run particle flash ~ ~ ~
effect give @s health_boost 1000000 4 true
effect give @s minecraft:regeneration 5 10 true
effect give @s minecraft:slowness 11 5 true
effect give @s minecraft:resistance 10 0 true
effect give @s minecraft:fire_resistance 10 0 true
execute as @s[scores={regendelay=20..39}] at @s run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,Fuse:0,ExplosionRadius:1b,ignited:1b}
execute as @s[scores={regendelay=40..59}] at @s run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,Fuse:0,ignited:1b}
execute as @s[scores={regendelay=60..79}] at @s run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,Fuse:0,ExplosionRadius:4b,ignited:1b}
execute as @s[scores={regendelay=80..99}] at @s run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,Fuse:0,ExplosionRadius:5b,ignited:1b}
execute as @s[scores={regendelay=100..119}] at @s run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,Fuse:0,ExplosionRadius:6b,ignited:1b}
execute as @s[scores={regendelay=120..139}] at @s run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,Fuse:0,ExplosionRadius:7b,ignited:1b}
execute as @s[scores={regendelay=140..}] at @s run summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,Fuse:0,ExplosionRadius:10b,powered:1b,ignited:1b}
scoreboard players add @s incarnation 1
execute at @s as @e[distance=..2] run data merge entity @s {Fire:200}
tag @s remove overdrive
execute as @s at @s run playsound regenerate master @a[distance=..10] ~ ~ ~ 5
scoreboard players remove @s regenergy 1000
title @s actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":"Incarnation","underlined":true,"color":"dark_gray"},{"text":"||","obfuscated":true,"color":"gold"},{"text":": ","color":"dark_gray"},{"score":{"name":"@s","objective":"incarnation"},"color":"dark_gray"},{"text":" ||","obfuscated":true,"color":"gold"},{"text":"Regen Energy","underlined":true,"color":"dark_gray"},{"text":"||","obfuscated":true,"color":"gold"},{"text":": ","color":"dark_gray"},{"score":{"name":"@s","objective":"regenergy"},"color":"dark_gray"}]
scoreboard players reset @s regendelay
scoreboard players reset @s timelordamage
