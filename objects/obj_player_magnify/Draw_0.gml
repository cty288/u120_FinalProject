con = obj_controller_magnify;

var_mouse_pos_x = mouse_x - (x-(var_sprite_width/2));
var_mouse_pos_y = mouse_y - (y-(var_sprite_height/2));

if con.shader_enabled shader_set(shd_magnify);
    shader_set_uniform_f(con.uni_time, con.var_time_var);
    shader_set_uniform_f(con.uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(con.uni_resolution, var_sprite_width, var_sprite_height);
    shader_set_uniform_f(con.uni_circle_radius, con.var_circle_radius);
    shader_set_uniform_f(con.uni_circle_zoom_min, con.var_circle_zoom_min);
    shader_set_uniform_f(con.uni_circle_zoom_max, con.var_circle_zoom_max);
    draw_sprite(spr_walk,image_index,x,y);
shader_reset();

