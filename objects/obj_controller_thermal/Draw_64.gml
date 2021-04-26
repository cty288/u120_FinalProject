var_time_var+=0.04;

var_mouse_pos_x = mouse_x - __view_get( e__VW.XView, 0 );
var_mouse_pos_y = mouse_y - __view_get( e__VW.YView, 0 ) ;

if shader_enabled shader_set(shd_thermal);
    shader_set_uniform_f(uni_time, var_time_var);
    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    if full_screen_effect draw_surface(surf,0,0);
shader_reset();

draw_text(0,0,string_hash_to_newline("Real FPS: "+string(fps_real)));

draw_text(0,60,string_hash_to_newline("Spacebar to toggle shader"));
draw_text(0,72,string_hash_to_newline("Shift key to toggle fullscreen or sprite only"));
draw_text(0,84,string_hash_to_newline("Escape key to exit"));

