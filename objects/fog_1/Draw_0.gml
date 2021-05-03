/// @description  FOG DRAWING
if (distance_to_object(global.fObject) < global.fDistance) {  // Draw fog
	//draw_sprite(sprite_index,image_index,x,y);  // draw normal sprites
	//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.fColor,fA0); 
	image_alpha=distance_to_object(global.fObject)/global.fDistance; 
} 
else{ 
	//draw_sprite(sprite_index,image_index,x,y);  // draw normal sprites

	//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.fColor,1); 
	image_alpha=1
}  // first alpha
//draw_text(x,y,image_alpha)
draw_self()
