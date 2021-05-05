event_inherited()

oplayer.mtu=4;
oplayer. msu=1
text_info=[
	["You",g01,"What's wrong with the light...again?"],
]

text_info2=[
	["You",g01,"Wait..."],
	["You",g01,"MOM!!!"],
	["Mother",g01,"YOU STOLE MY DIARY!"],
	["You",g01,"Mother, it's me! I am your son!!"],
	["Mother",g01,"All of you should die!!"],
	["You",g01,"Mother, please forgive me..."],
]

persistent=true;
t_scene_info=[

	[pauseCut],
	[messageCut,"You opened the diary:"],
	[bookCut,"Page 1\n Tomorrow is my wedding day. It is an arranged marriage between the two families."+
	"I don't expect too much but God Bless my fiance is at least nice to me."],
	[bookCut,"Page 25\n I am not sure if I am ready to be a mother."],
	[bookCut,"Page 37\n Two sweet angles! They are both so adorable."],
	[bookCut,"Page 57\n I am so tired recently and I really need a vacation. But my husband said I have to stay home and watch the kids."],
	[bookCut,"Page 59:\n I found an old book about witches in the basement when I was cleaning the house. I opened the book and it splashed blood on my dress. Weird..."],
	[bookCut,"Page 60:\nThe blood stain on the dress didn't come off. There is blood stain on my other clothes in the wash. I don't feel so well today. I will rewash them tomorrow."],
	[bookCut,"Page 68:\nHe locked me in the house so that I can watch the kids for him. He doesn't love me. I am the sacrifice of the family. He doesn't love me. I am the sacrifice of the family. He doesn't love me. I am the sacrifice of the family."],
	[bookCut,"Page 75:\nThey talked me into having babies. They took my freedom."],
	[bookCut,"Page 78:\nKill them. Kill them. Kill them."],
	[messageCut,"You closed the diary"],
	[soundCut,light_off,false,1],
	[shaderCut,black,1,2],
	[waitCut,1*room_speed],
	[roomCut,final_scene],
	[placeCut,oplayer,288,256],
	[shaderCut,black,0,2],
	[talkCut],
	[waitCut,0.5*room_speed],
	[talkCut2],
	[soundCut,horror1,false,1],
	[endingshakeCut],
	[waitCut,2*room_speed],
	[shaderCut,black,1,5],
	[waitCut,room_speed],
	[endingCut,"Game Ends"]
	
	
];
