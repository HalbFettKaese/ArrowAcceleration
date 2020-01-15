execute if predicate hfk_acc_bow:hold_mainhand store result score $ench_level hfk.temp run data get entity @s SelectedItem.tag.Enchantments[{id:"hfk:acceleration"}].lvl
execute unless predicate hfk_acc_bow:hold_mainhand store result score $ench_level hfk.temp run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"hfk:acceleration"}].lvl
scoreboard players add $ench_level hfk.temp 1
execute anchored eyes positioned ^ ^ ^ anchored feet as @e[type=arrow,limit=1,sort=nearest,tag=!hfk.acc_bow.init,distance=..1] run function hfk_acc_bow:internal/change_arrow