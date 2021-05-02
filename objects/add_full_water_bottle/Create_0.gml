event_inherited()

global.finger_added=true;




t_scene_info=[

	[pauseCut],
	[addInventoryCut,instance_find(owater_full,0),"A bottle of water"],
	[destroyCut,instance_find(owater_full,1)],
	[messageCut,"A bottle of water is added to your inventory"],
	[destroyCut,instance_find(omessage,0)],
	[freeCut],
	[endCut]
	
];