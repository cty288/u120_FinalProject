function changeCut(argument0, argument1, argument2) {
	//change a certain value
	/// @description @arg object id
	///@arg variable name as a string
	///@arg value

	with argument0
	    variable_instance_set(id,argument1,argument2)
	endCut()


}
