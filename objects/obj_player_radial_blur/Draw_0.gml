con = obj_controller_radial_blur;

var_mouse_pos_x = mouse_x - (x-(var_sprite_width/2));
var_mouse_pos_y = mouse_y - (y-(var_sprite_height/2));

if con.shader_enabled and !con.full_screen_effect shader_set(shd_radial_blur);
    shader_set_uniform_f(con.uni_time, con.var_time_var);
    shader_set_uniform_f(con.uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(con.uni_resolution, var_sprite_width, var_sprite_height);
    shader_set_uniform_f(con.uni_radial_blur_offset, con.var_radial_blur_offset);
    shader_set_uniform_f(con.uni_radial_brightness, con.var_radial_brightness);
    draw_sprite(spr_walk,image_index,x,y);
shader_reset();

