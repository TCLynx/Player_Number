## World Timer
scoreboard objectives add Time_world dummy
scoreboard players add .Timer Time_world 1
scoreboard players set .Init_world Time_world 80
scoreboard players set .Initialised Time_world 400
## World Initialisation
### Add objective
scoreboard objectives add Init_world dummy
### Register to objective
scoreboard players add .Initialised Init_world 0
## run function only if first time
execute if score .Timer Time_world >= .Init_world Time_world if score .Initialised Init_world matches 0 run function tick_initialize

## Initialize players
execute if score .Timer Time_world >= .Initialised Time_world if score .Initialised Init_world matches 1 if score @p[tag=!teacher,tag=!player_Init,tag=!initializing] Number matches 0 as @p[tag=!teacher,tag=!player_Init,tag=!initializing,scores={Number=0}] run function tick_player_initialize

## Scorboard Display
scoreboard objectives remove Number_display
scoreboard objectives add Number_display dummy Player_Number
scoreboard objectives setdisplay sidebar Number_display ascending
execute if score .Initialised Init_world matches 1 run scoreboard players add @a Number 0
execute as @a[scores={Number=1..}] run scoreboard players operation @s Number_display = @s Number
