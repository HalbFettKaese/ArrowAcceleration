execute store result score $x_motion hfk.temp run data get entity @s Motion[0] 10000
execute store result score $y_motion hfk.temp run data get entity @s Motion[1] 10000
execute store result score $z_motion hfk.temp run data get entity @s Motion[2] 10000

scoreboard players operation $x_motion hfk.temp *= $ench_level hfk.temp
scoreboard players operation $y_motion hfk.temp *= $ench_level hfk.temp
scoreboard players operation $z_motion hfk.temp *= $ench_level hfk.temp

scoreboard players set $max hfk.temp 50000

scoreboard players operation $x_motion hfk.temp < $max hfk.temp
scoreboard players operation $y_motion hfk.temp < $max hfk.temp
scoreboard players operation $z_motion hfk.temp < $max hfk.temp

scoreboard players set $min hfk.temp -50000

scoreboard players operation $x_motion hfk.temp > $min hfk.temp
scoreboard players operation $y_motion hfk.temp > $min hfk.temp
scoreboard players operation $z_motion hfk.temp > $min hfk.temp

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $x_motion hfk.temp
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get $y_motion hfk.temp
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get $z_motion hfk.temp
