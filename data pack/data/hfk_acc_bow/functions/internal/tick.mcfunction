
execute as @a[scores={hfk.a_b.useCB=1..}] if predicate hfk_acc_bow:hold_enchantment at @s run function hfk_acc_bow:internal/as_player/apply_acc
execute as @a[scores={hfk.a_b.useB=1..}] if predicate hfk_acc_bow:hold_enchantment at @s run function hfk_acc_bow:internal/as_player/apply_acc
tag @e[type=arrow] add hfk.acc_bow.init
scoreboard players reset @a hfk.a_b.useB
scoreboard players reset @a hfk.a_b.useCB