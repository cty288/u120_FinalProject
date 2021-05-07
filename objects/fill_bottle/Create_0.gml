event_inherited()


text_info=[

]


t_scene_info=[

	[pauseCut],
	[soundCut,fill_bottle_sound,false,0],
	[addInventoryCut,instance_find(owater_full,0),"A bottle of water",false],
	[removeInventoryCut,instance_find(owater_empty,0)],
	[messageCut,"The bottle is now filled with water"],
	[freeCut]
	
];