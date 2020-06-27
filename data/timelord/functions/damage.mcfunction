##damage
effect clear @s minecraft:resistance

execute store result score @s healthdamage run scoreboard players get @s timelordamage

execute if score @s healthdamage matches 12..23 run effect give @s resistance 1 3 true
execute if score @s healthdamage matches 12..23 run effect give @s instant_damage 1 0 true
execute if score @s healthdamage matches 12..23 run scoreboard players remove @s healthdamage 12

execute if score @s healthdamage matches 24..35 run effect give @s resistance 1 2 true
execute if score @s healthdamage matches 24..35 run effect give @s instant_damage 1 0 true
execute if score @s healthdamage matches 24..35 run scoreboard players remove @s healthdamage 24

execute if score @s healthdamage matches 36..47 run effect give @s resistance 1 1 true
execute if score @s healthdamage matches 36..47 run effect give @s instant_damage 1 0 true
execute if score @s healthdamage matches 36..47 run scoreboard players remove @s healthdamage 36

execute if score @s healthdamage matches 48..59 run effect give @s resistance 1 0 true
execute if score @s healthdamage matches 48..59 run effect give @s instant_damage 1 0 true
execute if score @s healthdamage matches 48..59 run scoreboard players remove @s healthdamage 48

execute if score @s healthdamage matches 60..71 run effect give @s instant_damage 1 0 true
execute if score @s healthdamage matches 60..71 run scoreboard players remove @s healthdamage 60

execute if score @s healthdamage matches 72..95 run effect give @s resistance 1 1 true
execute if score @s healthdamage matches 72..95 run effect give @s instant_damage 1 1 true
execute if score @s healthdamage matches 72..95 run scoreboard players remove @s healthdamage 72

execute if score @s healthdamage matches 96..119 run effect give @s resistance 1 0 true
execute if score @s healthdamage matches 96..119 run effect give @s instant_damage 1 1 true
execute if score @s healthdamage matches 96..119 run scoreboard players remove @s healthdamage 96

execute if score @s healthdamage matches 120..143 run effect give @s instant_damage 1 1 true
execute if score @s healthdamage matches 120..143 run scoreboard players remove @s healthdamage 120

execute if score @s healthdamage matches 144..179 run effect give @s resistance 1 1 true
execute if score @s healthdamage matches 144..179 run effect give @s instant_damage 1 2 true
execute if score @s healthdamage matches 144..179 run scoreboard players remove @s healthdamage 144

execute if score @s healthdamage matches 192.. run effect give @s resistance 1 0 true
execute if score @s healthdamage matches 192.. run effect give @s instant_damage 1 2 true
execute if score @s healthdamage matches 192.. run scoreboard players remove @s healthdamage 192
