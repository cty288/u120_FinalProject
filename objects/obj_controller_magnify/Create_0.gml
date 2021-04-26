draw_set_color(c_white);

uni_time = shader_get_uniform(shd_magnify,"time");
var_time_var = 0;

uni_mouse_pos = shader_get_uniform(shd_magnify,"mouse_pos");
var_mouse_pos_x = mouse_x - __view_get( e__VW.XView, 0 );
var_mouse_pos_y = mouse_y - __view_get( e__VW.YView, 0 );

uni_resolution = shader_get_uniform(shd_magnify,"resolution");
var_resolution_x = __view_get( e__VW.WView, 0 );
var_resolution_y = __view_get( e__VW.HView, 0 );

uni_circle_radius = shader_get_uniform(shd_magnify,"circleRadius");
var_circle_radius = 0.25; //higher = more waves

uni_circle_zoom_min = shader_get_uniform(shd_magnify,"minZoom");
var_circle_zoom_min = 0.4; //higher = less distortion

uni_circle_zoom_max = shader_get_uniform(shd_magnify,"maxZoom");
var_circle_zoom_max = 0.6; //higher = faster

shader_enabled = true;
full_screen_effect = true;

surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
__view_set( e__VW.SurfaceID, 0, surf );

