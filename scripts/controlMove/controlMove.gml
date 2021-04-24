function controlMove() {
	//give player ability to walk under control with two speed levels

	mtr-=1
	mtd-=1
	mtl-=1
	mtu-=1

	if mtr>=0{
	    x+=4
	    sprite_index=mysprite[4]
	    ms=1
	    if msu=1{
	        x+=4
	    }
	}

	if mtl>=0{
	    x-=4
	    sprite_index=mysprite[3]
	    ms=1
	    if msu=1{
	        x-=4
	    }
	}

	if mtu>=0{
	    y-=4
	    sprite_index=mysprite[2]
	    ms=1
	    if msu=1{
	        y-=4
	    }
	}

	if mtd>=0{
	    y+=4
	    sprite_index=mysprite[1]
	    ms=1
	    if msu=1{
	        y+=4
	    }
	}

	if !instance_exists(ocutscene){

	if mtr<=0 and mtd<=0 and mtl<=0 and mtu<=0 and mystate=0{

	if prem=1{

	            if keyboard_check(vk_right){
	                if !keyboard_check(vk_shift){
	                    if !place_meeting(x+32,y,oSolid){
	                        mtr=8
	                        msu=0
	                        prem=0
                        
	                    }
	                    else{
	                        sprite_index=mysprite[4]
	                        prem=0
	                    }
	                }
	                else{
	                    if !place_meeting(x+32,y,oSolid){
	                        mtr=4
	                        msu=1
	                        prem=0
                        
	                    }
	                    else{
	                        sprite_index=mysprite[4]
	                        prem=0
	                    }
	                }
	            }
            
	            else if keyboard_check(vk_left){
	                if !keyboard_check(vk_shift){
	                    if !place_meeting(x-32,y,oSolid){
	                        mtl=8
	                        msu=0
	                        prem=0
                        
	                    }
	                    else{
	                        sprite_index=mysprite[3]
	                        prem=0
	                    }
	                }
	                else{
	                    if !place_meeting(x-32,y,oSolid){
	                        mtl=4
	                        msu=1
	                        prem=0
                        
	                    }
	                    else{
	                        sprite_index=mysprite[3]
	                        prem=0
	                    }
	                }
	            }
            
	            else if keyboard_check(vk_up){
	                if !keyboard_check(vk_shift){
	                    if !place_meeting(x,y-32,oSolid){
	                        mtu=8
	                        msu=0
                        
	                    }
	                    else{
	                        sprite_index=mysprite[2]
	                    }
	                }
	                else{
	                    if !place_meeting(x,y-32,oSolid){
	                        mtu=4
	                        msu=1
                        
	                    }
	                    else{
	                        sprite_index=mysprite[2]
	                    }
	                }
	            }
            
	            else if keyboard_check(vk_down){
	                if !keyboard_check(vk_shift){
	                    if !place_meeting(x,y+32,oSolid){
	                        mtd=8
	                        msu=0
                        
	                    }
	                    else{
	                        sprite_index=mysprite[1]
	                    }
	                }
	                else{
	                    if !place_meeting(x,y+32,oSolid){
	                        mtd=4
	                        msu=1
                        
	                    }
	                    else{
	                        sprite_index=mysprite[1]
	                    }
	                }
	            }
     
	}

	else if prem=0{
    
	            if keyboard_check(vk_up){
	                if !keyboard_check(vk_shift){
	                    if !place_meeting(x,y-32,oSolid){
	                        mtu=8
	                        msu=0
	                        prem=1
                        
	                    }
	                    else{
	                        sprite_index=mysprite[2]
	                        prem=1
	                    }
	                }
	                else{
	                    if !place_meeting(x,y-32,oSolid){
	                        mtu=4
	                        msu=1
	                        prem=1
                        
	                    }
	                    else{
	                        sprite_index=mysprite[2]
	                        prem=1
	                    }
	                }
	            }
            
	            else if keyboard_check(vk_down){
	                if !keyboard_check(vk_shift){
	                    if !place_meeting(x,y+32,oSolid){
	                        mtd=8
	                        msu=0
	                        prem=1
                        
	                    }
	                    else{
	                        sprite_index=mysprite[1]
	                        prem=1
	                    }
	                }
	                else{
	                    if !place_meeting(x,y+32,oSolid){
	                        mtd=4
	                        msu=1
	                        prem=1
                        
	                    }
	                    else{
	                        sprite_index=mysprite[1]
	                        prem=1
	                    }
	                }
	            }
            
	            else if keyboard_check(vk_right){
	                if !keyboard_check(vk_shift){
	                    if !place_meeting(x+32,y,oSolid){
	                        mtr=8
	                        msu=0
                        
	                    }
	                    else{
	                        sprite_index=mysprite[4]
	                    }
	                }
	                else{
	                    if !place_meeting(x+32,y,oSolid){
	                        mtr=4
	                        msu=1
                        
	                    }
	                    else{
	                        sprite_index=mysprite[4]
	                    }
	                }
	            }
            
	            else if keyboard_check(vk_left){
	                if !keyboard_check(vk_shift){
	                    if !place_meeting(x-32,y,oSolid){
	                        mtl=8
	                        msu=0
                        
	                    }
	                    else{
	                        sprite_index=mysprite[3]
	                    }
	                }
	                else{
	                    if !place_meeting(x-32,y,oSolid){
	                        mtl=4
	                        msu=1
                        
	                    }
	                    else{
	                        sprite_index=mysprite[3]
	                    }
	                }
	            }
            
	}

	}

	}

	if mtr<0 and mtl<0 and mtu<0 and mtd<0
	    ms=0
    
	/*if prem=0{

	    switch(yy){
     
	        case -1:
	            if !place_meeting(x,y-32,oSolid){
	                mtu=8
	                msu=0
	                prem=1
	            }
	            else{
	                sprite_index=mysprite[2]
	            }
	            break;
            
	        case 1:
	            if !place_meeting(x,y+32,oSolid){
	                mtd=8
	                msu=0
	                prem=1
	            }
	            else{
	                sprite_index=mysprite[1]
	            }
	            break;
    
	    }
    
	        switch(xx){
     
	        case 1:
	            if !place_meeting(x+32,y,oSolid){
	                mtr=8
	                msu=0
	                prem=0
	            }
	            else{
	                sprite_index=mysprite[4]
	            }
	            break;
            
	        case -1:
	            if !place_meeting(x-32,y,oSolid){
	                mtl=8
	                msu=0
	                prem=0
	            }
	            else{
	                sprite_index=mysprite[3]
	            }
	            break;
	     }
     
	}

	else if prem=1{
	    switch(xx){
     
	        case 1:
	            if !place_meeting(x+32,y,oSolid){
	                mtr=8
	                msu=0
	                prem=0
	            }
	            else{
	                sprite_index=mysprite[4]
	            }
	            break;
            
	        case -1:
	            if !place_meeting(x-32,y,oSolid){
	                mtl=8
	                msu=0
	                prem=0
	            }
	            else{
	                sprite_index=mysprite[3]
	            }
	            break;
	     }
     
	     switch(yy){
     
	        case -1:
	            if !place_meeting(x,y-32,oSolid){
	                mtu=8
	                msu=0
	                prem=1
	            }
	            else{
	                sprite_index=mysprite[2]
	            }
	            break;
            
	        case 1:
	            if !place_meeting(x,y+32,oSolid){
	                mtd=8
	                msu=0
	                prem=1
	            }
	            else{
	                sprite_index=mysprite[1]
	            }
	            break;
    
	    }
	    }
    
	    if keyboard_check(vk_shift)
	        msu=1
        
	}


/* end controlMove */
}
