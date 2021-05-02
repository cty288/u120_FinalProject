event_inherited()


text_info=[
	["You",g01,"There is something under the bed, but it is far out of reach"]
]

text_info2=[
	["Kitten",s_kitten_face,"*meow meow*"]
]
if(!obj_inventory_manager.has_object(okitten)){
	t_scene_info=[

	[pauseCut],
	[talkCut],
	[freeCut]
	
];

}else{
	if(global.kitten_eat_fish){
		t_scene_info=[

			[pauseCut],
			[choiceCut,"There is something under the bed, but it is far out of reach","Let the kitten search","Leave it alone",
			kitten_search_success,choice_exit],
			[freeCut]
	
		];
	}else{
		t_scene_info=[

			[pauseCut],
			[choiceCut,"There is something under the bed, but it is far out of reach","Let the kitten search","Leave it alone",
			kitten_search_failed,choice_exit],
			[freeCut]
	
		];
	}
}
