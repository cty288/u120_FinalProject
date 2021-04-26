draw_set_color(c_white);

uni_time = shader_get_uniform(shd_posterization,"time");
var_time_var = 0;

uni_mouse_pos = shader_get_uniform(shd_posterization,"mouse_pos");
var_mouse_pos_x = mouse_x - __view_get( e__VW.XView, 0 );
var_mouse_pos_y = mouse_y - __view_get( e__VW.YView, 0 );

uni_resolution = shader_get_uniform(shd_posterization,"resolution");
var_resolution_x = __view_get( e__VW.WView, 0 );
var_resolution_y = __view_get( e__VW.HView, 0 );

uni_gamma = shader_get_uniform(shd_posterization,"gamma");
var_gamma = 0.6;

uni_num_colors = shader_get_uniform(shd_posterization,"numColors");
var_num_colors = 8.0;

shader_enabled = true;
full_screen_effect = true;

surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
__view_set( e__VW.SurfaceID, 0, surf );

