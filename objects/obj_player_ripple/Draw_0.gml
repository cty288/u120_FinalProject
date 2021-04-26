con = obj_controller_ripple;

var_mouse_pos_x = mouse_x - (x-(var_sprite_width/2));
var_mouse_pos_y = mouse_y - (y-(var_sprite_height/2));

if con.shader_enabled shader_set(shd_ripple);
    shader_set_uniform_f(con.uni_time, con.var_time_var);
    shader_set_uniform_f(con.uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(con.uni_resolution, var_sprite_width, var_sprite_height);
    shader_set_uniform_f(con.uni_wave_amount, con.var_wave_amount);
    shader_set_uniform_f(con.uni_wave_distortion, con.var_wave_distortion );
    shader_set_uniform_f(con.uni_wave_speed, con.var_wave_speed);
    draw_sprite(spr_walk,image_index,x,y);
shader_reset();

