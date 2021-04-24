function spriteMove() {
	//control the image speed while characters moving.


	if ms==0{
	    image_speed=0
	    image_index=1
	    if !place_snapped(16,16) move_snap(16,16)
	    }
	else if ms==1{
	    image_speed=spd/32
	}

	else if self=oplayer{
	    if sprite_index=mysprite[5]
	        image_speed=0.25
	}



}
