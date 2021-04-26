con = obj_controller_shockwave;

var_mouse_pos_x = mouse_x - (x-(var_sprite_width/2));
var_mouse_pos_y = mouse_y - (y-(var_sprite_height/2));

if con.shader_enabled and !con.full_screen_effect and con.shock_enabled shader_set(shd_shockwave);
    shader_set_uniform_f(con.uni_time, con.var_time_var);
    shader_set_uniform_f(con.uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(con.uni_resolution, var_sprite_width, var_sprite_height);
    shader_set_uniform_f(con.uni_shock_amplitude, con.var_shock_amplitude);
    shader_set_uniform_f(con.uni_shock_refraction, con.var_shock_refraction );
    shader_set_uniform_f(con.uni_shock_width, con.var_shock_width);
    draw_sprite(spr_walk,image_index,x,y);
shader_reset();

