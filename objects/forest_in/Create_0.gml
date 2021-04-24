event_inherited()

text_info=[

	["YONAKA",y01,"..."],
	["YONAKA",y09,"...This...place...is wierd."],
	["YONAKA",y06,"...Why did I end up here?"],
	["YONAKA",y022,"...I should head back."],

]

text_info2=[

	["YONAKA",y019,"?!"]

]

text_info3=[

	["YONAKA",y016,"..."],
	["???",m01,"..."],
	["YONAKA",y016,"....?#(Huh? ...Is that a stuffed toy?)"],
	["???",m01,"Mogege!"],
	["YONAKA",y027,"I... It talked?!"],
	["???",m01,"Of course I talk, moge."],
	["YONAKA",y028,"?!?!?!?!"],
	["???",m01,"You're pretty cute, huh!!"],
]

text_info4=[

	["???",m01,"High school girl, right?!#Moge-tans love high school girls!!"],
	["YONAKA",y030,"Eh? ...Ehh?"],
	["???",m01,"Mogegegege..."],
	["???",m01,"Hey guuuuuuuuuuuuuys!!!"],
]

text_info5=[

	["YONAKA",y010,"......"],
	["???",m01,"Mogege!"],
	["???",m01,"Moge! Mogemogemoge!!"],
	["???",m01,"Moge! Mogege!!"],
	["???",m01,"Pant, pant... Mogege!"],
	["???",m01,"Mogeeeeeee!"],
	["???",m01,"You and Moge-tans... Wanna have fun?"],
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
	[shaderCut,black,1,30],
	[roomCut,forest],
	[changeCut,obackground,"sprite_index",forest2],
	[placeCut,YONAKA,0,352],
	//[placeCut,oview,0,352],
	[walkCut,YONAKA,352,352,4],
	[shaderCut,black,0,30],
	[waitCut,30],
	
	[talkCut],
	[waitCut,30],
	[soundCut,Monster1,false],
	[waitCut,10],
	[changeCut,YONAKA,"sprite_index",YONAKA03],
	[changeCut,YONAKA,"image_index",1],
	[changeCut,YONAKA,"image_speed",0],
	[waitCut,20],
	[talkCut2],
	[waitCut,10],
	
	[shaderCut,black,1,30],
	[createCut,224,352,mogeko01],
	[changeCut,mogeko01,"sprite_index",mogeko01_04],
	[changeCut,mogeko01,"image_index",1],
	[changeCut,mogeko01,"image_speed",0],
	[shaderCut,black,0,30],
	
	[talkCut3],
	[walkCut,mogeko01,256,352,7],
	[waitCut,30],
	[walkCut,YONAKA,384,352,4],
	[waitCut,15],
	[changeCut,YONAKA,"sprite_index",YONAKA03],
	[changeCut,YONAKA,"image_index",1],
	[changeCut,YONAKA,"image_speed",0],
	[waitCut,20],
	[talkCut4],
	
	[shaderCut,black,1,30],
	[roomCut,forest02],
	[changeCut,mogeko01,"sprite_index",mogeko01_04],
	[changeCut,mogeko01,"image_index",1],
	[changeCut,mogeko01,"image_speed",0],
	[shaderCut,black,0,30],
	
	[waitCut,30],
	[walkCut,YONAKA,416,352,4],
	[waitCut,15],
	[changeCut,YONAKA,"sprite_index",YONAKA03],
	[changeCut,YONAKA,"image_index",1],
	[changeCut,YONAKA,"image_speed",0],
	[soundCut,intense01,true],
	[waitCut,40],
	
	[shaderCut,mogekos,1,30],
	[talkCut5],
	[shaderCut,black,1,0],
	[freeCut],
	[messageCut,"Run, and don't stop running."],
	[shaderCut,black,0,15],
	
	[changeCut,mogeko01,"mtr",1000],
	[changeCut,mogeko01,"image_speed",12/8],
	[checkpointCut],
	
];