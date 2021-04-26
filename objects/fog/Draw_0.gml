/// @description  FOG DRAWING
if (distance_to_object(global.fObject) < global.fDistance) 
 // [OBJECT LIST START]

 // [OBJECT LIST END]
 {  // Draw fog
 fA0 = distance_to_object(global.fObject)/global.fDistance; } else { fA0 = 1; }  // first alpha
 fA1 = 1;  // second alpha
if fA0 < fA1  fA1 = fA0 { draw_sprite(sprite_index,image_index,x,y);  // draw normal sprites
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.fColor,fA1); }  // draw fog (black sprites)

