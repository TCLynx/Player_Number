execute as @s[tag=!teacher,tag=!player_Init] run tag @s add initializing
execute as @s[tag=teacher] run tag @s add player_Init
execute as @s[scores={Number=!1..},tag=!teacher,tag=!player_Init,tag=initializing,c=1] run scoreboard players add .Number Number 1
execute as @s[scores={Number=!1..},tag=!teacher,tag=!player_Init,tag=initializing,c=1] run scoreboard players operation @s[scores={Number=!1..},tag=!teacher,tag=!player_Init,tag=initializing,c=1] Number = .Number Number
execute as @s[scores={Number=1..},tag=!teacher,tag=!player_Init,tag=initializing,c=1] run tag @s add player_Init
execute as @s[scores={Number=1..},tag=!teacher,tag=player_Init,tag=initializing,c=1] run tag @s remove initializing
