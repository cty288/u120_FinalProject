event_inherited()



text_info=[

]


t_scene_info=[

	[pauseCut],
	[addInventoryCut,instance_find(ophoto_reversed,0),"A half of a photo",true],
	[destroyCut,instance_find(ophoto_reversed,0)],
	[messageCut,"You picked up the photo, and added it to your inventory."],
	[destroyCut,instance_find(ophoto_reversed_interact,0)],
	[destroyCut,instance_find(otext,0)],
	[freeCut]
	
];