/// @description Fullscreen draw

if shader_enabled and shock_enabled 
    {
        shader_set(shd_shockwave);
        var_time_var+=0.004;
    }
    shader_set_uniform_f(uni_time, var_time_var);
    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    shader_set_uniform_f(uni_shock_amplitude, var_shock_amplitude);
    shader_set_uniform_f(uni_shock_refraction, var_shock_refraction );
    shader_set_uniform_f(uni_shock_width, var_shock_width);
    if full_screen_effect draw_surface(surf,0,0);
shader_reset();

draw_text(0,0,string_hash_to_newline("Real FPS: "+string(fps_real)));
draw_text(0,12,string_hash_to_newline("Shock amplitude (Q & A to adjust): "+string(var_shock_amplitude)));
draw_text(0,24,string_hash_to_newline("Shock refraction (W & S to adjust): "+string(var_shock_refraction)));
draw_text(0,36,string_hash_to_newline("Shock width (E & D to adjust): "+string(var_shock_width)));

draw_text(0,60,string_hash_to_newline("Spacebar to toggle shader"));
//draw_text(0,72,"Shift key to toggle fullscreen or sprite only"); //not currently working
draw_text(0,84,string_hash_to_newline("Left mouse click to start a shockwave"));
draw_text(0,96,string_hash_to_newline("Escape key to exit"));

