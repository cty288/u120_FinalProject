event_inherited()

text_info=[

	["YONAKA",y01,"huh...huh..."],

]

text_info2=[

	["YONAKA",y01,"......"],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],

]

text_info3=[

	["YONAKA",y016,"..."],
]

text_info4=[

	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
	["YONAKA",y01,""],
]

text_info5=[

	["YONAKA",y010,"......"],
	["???",m01,"Mogege!"],
	["???",m01,"Moge! Mogemogemoge!!"],
	["???",m01,"Moge! Mogege!!"],
	["???",m01,"Pant, pant... Mogege!"],
	["???",m01,"Mogeeeeeee!"],
	["???",m01,"You and Moge-tans... Wamma have fun?"],
	["YONAKA",y010,"........."],
	["???",m01,"It's alright!#We're not gonna hurt you!"],
	["???",m01,"Right, guys?"],
	["???",m01,"Yeah!!!!!!!!!"],
	["YONAKA",y010,"........."],
	["YONAKA",y011,"........y."],
	["YONAKA",y026,"YAAAAAAAAAAAAAAAAAHHHHHHH!!!"],
]

t_scene_info=[
	
	[pauseCut],
	[changeCut,mogeko01,"mtr",0],
	[changeCut,mogeko01,"image_speed",0],
	[shaderCut,black,1,30],
	[roomCut,path_castle],
	[changeCut,obackground,"sprite_index",starsky],
	[placeCut,YONAKA,0,352],
	[placeCut,oview,0,352],
	[walkCut,YONAKA,352,352,8],
	[shaderCut,black,0,30],
	[waitCut,30],
	
	[talkCut],
	[waitCut,30],
	[changeCut,YONAKA,"sprite_index",YONAKA03],
	[changeCut,YONAKA,"image_index",1],
	[changeCut,YONAKA,"image_speed",0],
	[waitCut,20],
	[talkCut2],
	[waitCut,20],
	[changeCut,YONAKA,"sprite_index",YONAKA04],
	[changeCut,YONAKA,"image_index",1],
	[changeCut,YONAKA,"image_speed",0],
	[waitCut,20],
	
	[talkCut3],
	
	[shaderCut,farcastle,1,30],
	[talkCut4],
	[shaderCut,farcastle,0,30],
	
	[freeCut]
	
];