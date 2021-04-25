function createCut(argument0, argument1) {
	//create required object on coordinate provided 
	with argument0{
		put_into_inventory(argument1)
		//instance_destroy()
	}
	endCut()
 
}