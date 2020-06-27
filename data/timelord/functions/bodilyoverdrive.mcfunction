## bodilyoverdrive
execute as @s[tag=overdrive,tag=!done] run function timelord:overdriveoff
execute as @s[tag=!overdrive,tag=!done,scores={Food=20..}] run function timelord:overdriveon
tag @s remove done
