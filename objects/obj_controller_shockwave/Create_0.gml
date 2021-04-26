/// @description Shader uniform setup

draw_set_color(c_white);

uni_time = shader_get_uniform(shd_shockwave,"time");
var_time_var = 0;

uni_mouse_pos = shader_get_uniform(shd_shockwave,"mouse_pos");
var_mouse_pos_x = mouse_x - __view_get( e__VW.XView, 0 );
var_mouse_pos_y = mouse_y - __view_get( e__VW.YView, 0 );

uni_resolution = shader_get_uniform(shd_shockwave,"resolution");
var_resolution_x = __view_get( e__VW.WView, 0 );
var_resolution_y = __view_get( e__VW.HView, 0 );

uni_shock_amplitude = shader_get_uniform(shd_shockwave,"shock_amplitude");
var_shock_amplitude = 10;

uni_shock_refraction = shader_get_uniform(shd_shockwave,"shock_refraction");
var_shock_refraction = 0.8;

uni_shock_width = shader_get_uniform(shd_shockwave,"shock_width");
var_shock_width = 0.1;

shader_enabled = true;
full_screen_effect = true;

shock_enabled = false;

surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
__view_set( e__VW.SurfaceID, 0, surf );

