/// @description Insert description here
// You can write your code in this editor
inventory_manager=instance_find(obj_inventory_manager,0);
index=0;
sprite_target_x=0;
sprite_target_y=0;

current_sprite_x=0;
current_sprite_y=0;
depth=100;
draw=true;
scale=1;
draw_alpha=0;

msg_show=false;
function put_into_inventory(name_obj_this){
	index=inventory_manager.add_to_inventory(id,1,name_obj_this);
	if(index>=0){ //successfully picked
		on_picked();
		sprite_target_x = camera_get_view_x(view_camera[0])+35+5+85*index;
		sprite_target_y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-90;

		current_sprite_x=x;
		current_sprite_y=y;
		
		draw=false;
	}
	return index;
}
function on_picked(){

}