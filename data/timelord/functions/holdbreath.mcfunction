##holdbreath
execute at @s unless block ~ ~1 ~ water run effect give @s water_breathing 300 0 true
scoreboard players set @s[tag=!vacuum] breathtimer 6000
