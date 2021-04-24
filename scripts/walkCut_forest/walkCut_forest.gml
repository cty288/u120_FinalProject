function walkCut_forest(argument0, argument1, argument2, argument3) {
	//set destination for characters and calculate required movement
	///@arg object id
	///@arg x
	///@arg y
	///@arg spd

	if instance_exists(argument0){
	with argument0{
	    if x-argument1>0{
	        if mtl<0{
	            mtl=(x-argument1)/argument3
				ms=1
			}
	    }
	    else if x-argument1<0{
	        if mtr<0{
	            mtr=(argument1-x)/argument3
				ms=1
			}
	    }
	    if y-argument2>0 and !place_meeting(x,y-32,oSolid){
	        if mtu<0{
	            mtu=(y-argument2)/argument3
				ms=1
			}
	    }
	    else if y-argument2<0 and !place_meeting(x,y+32,oSolid){
	        if mtd<0{
	            mtd=(argument2-y)/argument3
				ms=1
			}
	    }       
	}
	}
	endCut()


}
