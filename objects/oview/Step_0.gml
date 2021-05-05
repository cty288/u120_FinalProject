if instance_exists(oplayer){

   camera_set_view_target(view_camera[0],id);
   if(shake){
	   //show_debug_message("shake");
		ending_shake();
		//show_debug_message(string(target_x));
		
		x=target_x;
		y=target_y;
   }else{
	   target_x+=(oplayer.x-target_x)*.1
		target_y+=(oplayer.y-target_y)*.1
		
		x=lerp(x,target_x,0.1);
		y=lerp(y,target_y,0.1);
   }


}
else
    instance_destroy()

