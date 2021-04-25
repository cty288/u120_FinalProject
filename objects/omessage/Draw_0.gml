draw_self()

draw_set_halign(fa_left)
draw_set_colour(c_black)
draw_set_font(font_inventory);
textcount+=1
texttype=string_copy(text,1,textcount)
draw_text_ext(x+32,y+stringHeight,string_hash_to_newline(texttype),stringHeight,boxWidth-64)

