function faceDialog(argument0) {
	//no longer in use
	//keep track player's position and make NPCs face towards it while having a dialogue

	facedirection=point_direction(x,y,argument0.x,argument0.y)
	if instance_exists(mysprite[1]){
	if mysprite[1]!=noone{

	if (315<=facedirection and facedirection<360) or (0<=facedirection and facedirection<45)
	    sprite_index=mysprite[4]
    
	if (45<=facedirection and facedirection<135)
	    sprite_index=mysprite[2]
     
	if (135<=facedirection and facedirection<225)
	    sprite_index=mysprite[3]
        
	if (225<=facedirection and facedirection<315)
	    sprite_index=mysprite[1]
	}
	}



}
