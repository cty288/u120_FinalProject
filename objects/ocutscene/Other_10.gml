current_scene=scene_info[scene]
var len = array_length_1d(current_scene)-1
current_scene_array=-1
current_scene_array=array_create(len,0)
array_copy(current_scene_array,0,current_scene,1,len) 