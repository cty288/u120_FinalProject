draw_set_color(c_white);

uni_resolution = shader_get_uniform(shd_refraction,"u_resolution");
var_resolution_x = __view_get( e__VW.WView, 0 );
var_resolution_y = __view_get( e__VW.HView, 0 );

uni_texture_resolution = shader_get_uniform(shd_refraction,"u_textureRes");
uni_texture_position = shader_get_uniform(shd_refraction,"u_texturePos");
var_refraction_amount = 0.03;

samp_normal_map = shader_get_sampler_index(shd_refraction, "s_normalMap");
samp_diffuse_tex = shader_get_sampler_index(shd_refraction, "s_diffuseTex");

bg_Normal_Map = background_get_texture(bac_refraction_normal);  
bg_Normal_Map_width = background_get_width(bac_refraction_normal);
bg_Normal_Map_height = background_get_height(bac_refraction_normal);

bg_Diffuse_Tex = background_get_texture(bac_refraction_diffuse);

shader_enabled = true;

surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
__view_set( e__VW.SurfaceID, 0, surf );

