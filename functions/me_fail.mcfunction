tellraw @s {"text":"Your Magic Energy is too low to use this ability! Maybe you're wearing too much armor...?","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to show what's contributing to your Magic Energy. You can do this at any time with /trigger magicenergy."}]},"clickEvent":{"action":"run_command","value":"/trigger magicenergy"}}
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 0