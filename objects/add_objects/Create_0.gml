event_inherited()
added_object=noone;
added_name="";

text_info=[

]


t_scene_info=[

	[pauseCut],
	[addInventoryCut,added_object,added_name],
	[destroyCut,instance_find(added_object,0)],
	[messageCut,"Arrow keys: Move Yonaka.#Shift: Speed up while moving.#Space & Enter: Interact.#Esc: Open menu."],
	[freeCut]
	
];