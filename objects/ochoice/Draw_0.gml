draw_self()

var xx=display_get_gui_width()/2
var yy=display_get_gui_height()/2
draw_set_halign(fa_center)

for (var i=0; i<=array_length_1d(option)-1; i++){
        draw_set_colour(c_gray)
        if i==menu_index
            draw_set_colour(c_black)
        draw_text(xx,+240+(i*20),string_hash_to_newline(option[i]))
}

