if room!=rm_pause and sprite_width!=640{
x=camera_get_view_x(view_camera[0])*(room_width-sprite_width)/(room_width-640)
y=0
depth=200
}
else{
x=camera_get_view_x(view_camera[0])
y=camera_get_view_y(view_camera[0])
}