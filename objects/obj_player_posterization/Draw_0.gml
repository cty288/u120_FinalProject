con = obj_controller_posterization;

if con.shader_enabled shader_set(shd_posterization);
    shader_set_uniform_f(con.uni_time, con.var_time_var);
    shader_set_uniform_f(con.uni_mouse_pos, con.var_mouse_pos_x, con.var_mouse_pos_y);
    shader_set_uniform_f(con.uni_resolution, var_sprite_width, var_sprite_height);
    shader_set_uniform_f(con.uni_gamma, con.var_gamma);
    shader_set_uniform_f(con.uni_num_colors, con.var_num_colors );
    draw_sprite(spr_walk,image_index,x,y);
shader_reset();

