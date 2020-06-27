## mass explosion
execute at @s run particle flash ~ ~ ~
execute at @s run playsound massexplosion master @s ~ ~ ~ 5 2
effect give @s resistance 3 255 true
summon creeper ~ ~ ~ {Silent:1b,NoAI:1b,Fuse:0,ExplosionRadius:10b,powered:1b,ignited:1b}
scoreboard players remove @s regenergy 500
