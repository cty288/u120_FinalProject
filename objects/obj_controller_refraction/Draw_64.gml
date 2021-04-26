
var_mouse_pos_x = (mouse_x - __view_get( e__VW.XView, 0 )) - (bg_Normal_Map_width/2);
var_mouse_pos_y = (mouse_y - __view_get( e__VW.YView, 0 )) - (bg_Normal_Map_height/2);

draw_surface(surf,0,0);
if shader_enabled shader_set(shd_refraction);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    shader_set_uniform_f(uni_texture_resolution, bg_Normal_Map_width, bg_Normal_Map_height);
    shader_set_uniform_f(uni_texture_position, var_mouse_pos_x, var_mouse_pos_y, var_refraction_amount);
    texture_set_stage(samp_normal_map, bg_Normal_Map);
    texture_set_stage(samp_diffuse_tex, bg_Diffuse_Tex);
    draw_surface_part(surf, var_mouse_pos_x, var_mouse_pos_y, bg_Normal_Map_width, bg_Normal_Map_height, var_mouse_pos_x, var_mouse_pos_y);
shader_reset();

draw_text(0,0,string_hash_to_newline("Real FPS: "+string(fps_real)));
draw_text(0,12,string_hash_to_newline("Refraction offset (Q & A to adjust): "+string(var_refraction_amount)));

draw_text(0,60,string_hash_to_newline("Spacebar to toggle shader"));
draw_text(0,72,string_hash_to_newline("Escape key to exit"));

