## passivepowers
execute unless entity @s[scores={regenning=1..}] run effect give @s strength 1 0 true
execute unless entity @s[scores={regenning=1..}] run effect give @s jump_boost 1 0 true
execute unless entity @s[scores={regenning=1..}] run effect give @s speed 1 0 true
#execute unless entity @s[scores={regenning=1..}] run effect give @s resistance 1 0 true
execute unless entity @s[scores={regenning=1..}] run effect clear @s[tag=!overdrive] poison
#execute unless entity @s[scores={regenning=1..},tag=!superhero_the_end] run effect clear @s wither
execute unless entity @s[scores={regenning=1..}] run effect clear @s nausea

execute as @s[scores={timelordcrouch=1..},x_rotation=90] run title @s actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":"Incarnation","underlined":true,"color":"gray"},{"text":"||","obfuscated":true,"color":"gold"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"incarnation"},"color":"gray"},{"text":" ||","obfuscated":true,"color":"gold"},{"text":"Regen Energy","underlined":true,"color":"gray"},{"text":"||","obfuscated":true,"color":"gold"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"regenergy"},"color":"gray"}]

execute as @s[scores={timelordcrouch=1..},x_rotation=-90] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"Timelord Actions:","bold":true,"underlined":true,"color":"gold"},{"text":"\n"},{"text":"Force Regeneration","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute as @s[scores={regenergy=1000..}] run function timelord:regenerate"}},{"text":"\n\n","underlined":true,"color":"dark_aqua"},{"text":"Mass Chronon Discharge","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute as @s[scores={regenergy=500..}] run function timelord:massexplosion"}},{"text":"\n\n","underlined":true,"color":"dark_aqua"},{"text":"Bodily Systems Overdrive","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function timelord:bodilyoverdrive"}},{"text":"\n\n","underlined":true,"color":"dark_aqua"},{"text":"Hold Breath","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function timelord:holdbreath"}},{"text":"\n\n","underlined":true,"color":"dark_aqua"},{"text":"Heal","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute as @s[scores={regenergy=50..}] run function timelord:heal"}}]
tag @s remove vacuumbreath
tag @s[scores={breathtimer=1..}] add vacuumbreath
scoreboard players remove @s breathtimer 1

## low health regenning
execute unless entity @s[scores={regenning=1..}] run effect clear @s resistance
execute unless entity @s[scores={regenning=1..}] run effect give @s[tag=!overdrive] resistance 1 255 true
execute store result score @s timedamagefluid run scoreboard players get @s timelordamage
execute store result score @s halfhearts run scoreboard players operation @s timedamagefluid /= @s damagedivisor
execute as @s[tag=!overdrive,scores={regenergy=1000..}] unless entity @s[scores={regenning=1..}] unless entity @s[scores={timelordcrouch=1..}] if score @s Health <= @s halfhearts run function timelord:regenerate
execute as @s[tag=!overdrive,scores={regenergy=..1000}] unless entity @s[scores={regenning=1..}] if score @s Health <= @s halfhearts run kill @s
#execute as @s[tag=!overdrive,scores={regenergy=1000..,timelordcrouch=1..}] unless entity @s[scores={regenning=1..}] run function timelord:damage
execute as @s[tag=!overdrive,scores={halfhearts=1..}] unless entity @s[scores={regenning=1..}] if score @s Health > @s halfhearts run function timelord:damage
#scoreboard players reset @s halfhearts
scoreboard players reset @s timedamagefluid
#scoreboard players operation @s healthdamage = @s timelordamage
#execute if score @s timelordamage matches 12.. if entity @s[nbt={HurtTime:0s}] as @s run function timelord:damage
scoreboard players set @s timelordamage 0
execute as @s[scores={regenergy=1000..,Health=..8}] unless entity @s[scores={timelordcrouch=1..}] unless entity @s[scores={regenning=1..}] run function timelord:regenerate
scoreboard players add @s[scores={Health=..8,regenergy=1000..,timelordcrouch=1..}] regendelay 1
scoreboard players remove @s[scores={regenning=1..}] regenning 1
execute at @s[scores={regenning=1..}] run particle minecraft:flame ~ ~2 ~ 0.2 0.4 0.2 0.01 5
execute at @s[scores={regenning=1..}] run particle minecraft:smoke ~ ~2 ~ 0.2 0.4 0.2 0.01 2
execute at @s[scores={regenning=1..}] run particle minecraft:flame ~ ~0.9 ~ 0.3 0.1 0.3 0.007 5
execute at @s[scores={regenning=1}] run particle minecraft:flash ~ ~1 ~
execute at @s[scores={regenning=1..}] as @e[distance=..2] run data merge entity @s {Fire:200}

scoreboard players set @s[scores={timelordeaths=1..}] regenergy 13000
scoreboard players set @s[scores={timelordeaths=1..}] incarnation 0
tag @s[scores={timelordeaths=1..}] remove overdrive
scoreboard players reset @s timelordeaths
scoreboard players reset @s timelordcrouch
