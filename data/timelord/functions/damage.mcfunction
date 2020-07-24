##healthdamage
effect clear @s minecraft:resistance
effect clear @s minecraft:instant_damage

execute store result score @s healthdamage run scoreboard players get @s halfhearts

execute if score @s healthdamage matches 1 run effect give @s resistance 1 3 true
execute if score @s healthdamage matches 1 run effect give @s instant_damage 1 0 true

#2 initial healthdamage (2-3 healthdamage)
execute if score @s healthdamage matches 2 run effect give @s resistance 1 2 true
execute if score @s healthdamage matches 2 run effect give @s instant_damage 1 0 true

#3 initial healthdamage (3-4 healthdamage)
execute if score @s healthdamage matches 3 run effect give @s resistance 1 1 true
execute if score @s healthdamage matches 3 run effect give @s instant_damage 1 0 true

#4 initial healthdamage (4-5 healthdamage)
execute if score @s healthdamage matches 4 run effect give @s resistance 1 0 true
execute if score @s healthdamage matches 4 run effect give @s instant_damage 1 0 true

#5 initial healthdamage (5-6 healthdamage)
execute if score @s healthdamage matches 5 run effect give @s resistance 1 0 true
execute if score @s healthdamage matches 5 run effect give @s instant_damage 1 1 true
execute if score @s healthdamage matches 5 run effect give @s absorption 1 0 true

#6 healthdamage (consistent)
execute if score @s healthdamage matches 6 run effect give @s instant_damage 1 0 true

#7 healthdamage (consistent)
execute if score @s healthdamage matches 7 run effect give @s resistance 1 1 true
execute if score @s healthdamage matches 7 run effect give @s instant_damage 1 1 true

#8 healthdamage (consistent)
execute if score @s healthdamage matches 8 run effect give @s instant_damage 1 2 true
execute if score @s healthdamage matches 8 run effect give @s absorption 1 3 true

#9 healthdamage (consistent)
execute if score @s healthdamage matches 9 run effect give @s resistance 1 0 true
execute if score @s healthdamage matches 9 run effect give @s instant_damage 1 1 true

#10 healthdamage (consistent)
execute if score @s healthdamage matches 10 run effect give @s resistance 1 1 true
execute if score @s healthdamage matches 10 run effect give @s instant_damage 1 2 true
execute if score @s healthdamage matches 10 run effect give @s absorption 1 0 true

#11 healthdamage (consistent)
execute if score @s healthdamage matches 11 run effect give @s resistance 1 0 true
execute if score @s healthdamage matches 11 run effect give @s instant_damage 1 2 true
execute if score @s healthdamage matches 11 run effect give @s absorption 1 1 true

#12 healthdamage (consistent)
execute if score @s healthdamage matches 12 run effect give @s instant_damage 1 1 true

#13 healthdamage (consistent)
execute if score @s healthdamage matches 13 run effect give @s resistance 1 1 true
execute if score @s healthdamage matches 13 run effect give @s instant_damage 1 2 true
execute if score @s healthdamage matches 13 run effect give @s regeneration 1 2 true

#14 healthdamage (consistent)
execute if score @s healthdamage matches 14 run effect give @s resistance 1 1 true
execute if score @s healthdamage matches 14 run effect give @s instant_damage 1 2 true

#15 healthdamage (consistent)
execute if score @s healthdamage matches 15 run effect give @s resistance 1 0 true
execute if score @s healthdamage matches 15 run effect give @s instant_damage 1 2 true
execute if score @s healthdamage matches 15 run effect give @s absorption 1 0 true

#16 healthdamage (consistent)
execute if score @s healthdamage matches 16 run effect give @s resistance 1 2 true
execute if score @s healthdamage matches 16 run effect give @s instant_damage 1 4 true
execute if score @s healthdamage matches 16 run effect give @s absorption 1 3 true

#17 healthdamage (consistent)
execute if score @s healthdamage matches 17 run effect give @s resistance 1 2 true
execute if score @s healthdamage matches 17 run effect give @s instant_damage 1 4 true
execute if score @s healthdamage matches 17 run effect give @s absorption 1 4 true
execute if score @s healthdamage matches 17 run effect give @s regeneration 1 2 true

#18 healthdamage (consistent)
execute if score @s healthdamage matches 18 run effect give @s resistance 1 2 true
execute if score @s healthdamage matches 18 run effect give @s instant_damage 1 4 true
execute if score @s healthdamage matches 18 run effect give @s absorption 1 4 true

#19 healthdamage (consistent)
execute if score @s healthdamage matches 19 run effect give @s resistance 1 0 true
execute if score @s healthdamage matches 19 run effect give @s instant_damage 1 2 true

#20 or more healthdamage (consistent)
execute if score @s healthdamage matches 20.. run effect give @s instant_damage 1 5 true
