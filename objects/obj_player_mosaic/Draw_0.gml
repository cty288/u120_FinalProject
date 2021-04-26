con = obj_controller_mosaic;

if con.shader_enabled and con.full_screen_effect = false shader_set(shd_mosaic);
    shader_set_uniform_f(con.uni_time, con.var_time_var);
    shader_set_uniform_f(con.uni_mouse_pos, con.var_mouse_pos_x, con.var_mouse_pos_y);
    shader_set_uniform_f(con.uni_resolution, var_sprite_width, var_sprite_height);
    shader_set_uniform_f(con.uni_pixel_amount, con.var_pixel_amount);
    draw_sprite(spr_walk,image_index,x,y);
shader_reset();

