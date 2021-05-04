draw_self()

draw_set_halign(fa_middle)
draw_set_valign(fa_top);
draw_set_colour(c_black)
draw_set_font(font_diary);
textcount+=1
texttype=string_copy(text,1,textcount)
draw_text_ext(camera_get_view_x(view_camera[0])+ camera_get_view_width(view_camera[0])/2,y+stringHeight+80,text,stringHeight+5,375)

