con = obj_controller_LED_effect;

if con.shader_enabled and !con.full_screen_effect shader_set(shd_LED);
    shader_set_uniform_f(con.uni_time, con.var_time_var);
    shader_set_uniform_f(con.uni_mouse_pos, con.var_mouse_pos_x, con.var_mouse_pos_y);
    shader_set_uniform_f(con.uni_resolution, var_sprite_width, var_sprite_height);
    shader_set_uniform_f(con.uni_led_size, con.var_led_size);
    shader_set_uniform_f(con.uni_led_brightness, con.var_led_brightness);
    draw_sprite(spr_walk,image_index,x,y);
shader_reset();

