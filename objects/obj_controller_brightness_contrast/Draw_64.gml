var_time_var+=0.04;

var_mouse_pos_x = mouse_x - __view_get( e__VW.XView, 0 );
var_mouse_pos_y = mouse_y - __view_get( e__VW.YView, 0 ) ;

if shader_enabled shader_set(shd_bright_contrast);
    shader_set_uniform_f(uni_time, var_time_var);
    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    shader_set_uniform_f(uni_brightness_amount, var_brightness_amount);
    shader_set_uniform_f(uni_contrast_amount, var_contrast_amount );
        if full_screen_effect draw_surface(surf,0,0);
shader_reset();

draw_text(0,12,string_hash_to_newline("Brightness amount (Q & A to adjust): "+string(var_brightness_amount)));
draw_text(0,24,string_hash_to_newline("Contrast amount (W & S to adjust): "+string(var_contrast_amount)));

draw_text(0,60,string_hash_to_newline("Spacebar to toggle shader"));
draw_text(0,72,string_hash_to_newline("Shift key to toggle fullscreen or sprite only"));
draw_text(0,84,string_hash_to_newline("Escape key to exit"));

