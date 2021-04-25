draw_self()

draw_set_halign(fa_left)
draw_set_colour(c_black)
draw_set_font(font0)
draw_set_valign(fa_top)

textcount+=1
texttype=string_copy(text,1,textcount)

switch(array_length_1d(current_text)){

case 1:

draw_text_ext(x+16,y+stringHeight,string_hash_to_newline(texttype),stringHeight,boxWidth-32)

break;

case 3:

draw_text(x+160,y,string_hash_to_newline(name))

draw_text_ext(x+160,y+stringHeight,string_hash_to_newline(texttype),stringHeight,boxWidth-176)

break;
}