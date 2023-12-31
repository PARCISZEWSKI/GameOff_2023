extends  Node
#Template
#"000" : {
#		"name" : "Text here",
#		"description" : "Text here",
#		"image" : "path to image",
#		"one-off" : false,
#		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
#		"left add" : [],
#		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
#		"right add" : [],
#	},

const homeless = 'Jens' #Mynd til
const artist = 'Lorenza' #Mynd vantar
const girl_young = 'Jess' #Mynd til
const janitor = "Mike" #mynd til
const investor = "Margret" #mynd til
const person_one = "Georgia" #mynd til
const psy_services = "Fredericksens Health" #mynd til
const psy_experimental = "Helga and Company" #mynd til
const cat = "Luna"  #mynd til
const person_hotel = "Bill and Sookie"#mynd til
const journalist = "Cassandra"  #Mynd til
const tourist = "Andrea" #Ekki til

var cards: Dictionary = { 
	"001" : {
		"name" : "Introduction",
		"description" : "Welcome, welcome. You have been appointed to take care of the largest homeless shelter yet. It will be a perilous journey best of luck to you! (Move the cards right for yes and left for no)",
		"image" : " _res://assets/visual/stelpa555555.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : ["002"],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : ["002"],
	},
	
	"002" : { #Homeless tengist í : 003, 005, 006, 007
		"name" : homeless,
		"description" : "I found myself down my luck. Is there any chance I can stay here, it would mean a lot",
		"image" : "res://assets/visual/maður.png",
		"one-off" : true,
		"left" : { "one": -200, "two": -200, "three": -200, "four": -200, },
		"left add" : ["001"],
		"right" : { "one": 30, "two": -20, "three": 0, "four": 0, },
		"right add" : ["003", "005", "006", "007", "008", "009", "010", "011", "015", "017", "018", "019"],
	},
	
	"003" : { #Homeless leads to journalist
		"name" : homeless,
		"description" : "This is a very nice facility, I want to let my friends know about it, is that alright with you?",
		"image" : "res://assets/visual/maður.png",
		"one-off" : false,
		"left" : { "one": -40, "two": 0, "three": 10, "four": -10, },
		"left add" : [],
		"right" : { "one": 20, "two": -20, "three": -20, "four": 0, },
		"right add" : ["023", "024"],
	},
	
	"004" : { #Homeless angry about hotel
		"name" : homeless,
		"description" : "Even though this is a nice place, I think that it should be reserved for people in need",
		"image" : "res://assets/visual/maður.png",
		"one-off" : true,
		"left" : { "one": -20, "two": 0, "three": 0, "four": 0, },
		"left add" : ["018"],
		"right" : { "one": 0, "two": -40, "three": 0, "four": 0, },
		"right add" : ["018"],
	},
	
	"005" : { #Young girl with cake
		"name" : girl_young,
		"description" : "I was baking a cake with my mom. She told me that maybe the shelter would maybe like it",
		"image" : "res://assets/visual/stelpa555555.png",
		"one-off" : false,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 10, "two": 10, "three": 0, "four": 0, },
		"right add" : ["020"],
	},
	
	"006" : { #Janitor wanting to throw people out
		"name" : janitor,
		"description" : "There has been an accident in one of the bathrooms, should we get rid of the culprit.",
		"image" : "res://assets/visual/janitor2.png",
		"one-off" : false,
		"left" : { "one": 0, "two": -20, "three": -0, "four": 0, },
		"left add" : [],
		"right" : { "one": -50, "two": -20, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"007" : { #Investor card
		"name" : investor,
		"description" : "I like what you're doing. If you can manage some progress I could see myself offering some monetary support",
		"image" : "res://assets/visual/invesstor.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"008" : { #Persone one, uneccesary service
		"name" : person_one,
		"description" : "I think this service is unnecessary because everyone has an equal opportunity to earn money",
		"image" : "res://assets/visual/karen.png",
		"one-off" : false,
		"left" : { "one": 10, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -40, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"009" : { #Person one, homeless in gardens
		"name" : person_one,
		"description" : "Good day I wanted to let you know that since you came here I have seen 4 homeless people in my garden, I find it unacceptable. I think you should talk to them and forbid them from entering other people's gardens",
		"image" : "res://assets/visual/karen.png",
		"one-off" : true,
		"left" : { "one": 30, "two": -10, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -30, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"010" : { #Person one, scared of the homeless
		"name" : person_one,
		"description" : "I dont know how you can work with these \"people\". Arent you always scared?",
		"image" : "res://assets/visual/karen.png",
		"one-off" : false,
		"left" : { "one": 20, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -10, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},

	"011" : { #Psy_services, introduction
		"name" : psy_services,
		"description" : "Hi, you can count on our psychology services for your shelter population, please let them know we are available",
		"image" : "res://assets/visual/sálaS.png",
		"one-off" : true,
		"left" : { "one": -20, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 10, "two": -10, "three": 0, "four": 0, },
		"right add" : ["012"],
	},

	"012" : { #Psy_services, warning
		"name" : psy_services,
		"description" : "I think that there was a misunderstanding. We do not provide services for people under the influence, we want to see you ban drug use.",
		"image" : "res://assets/visual/sálaS.png",
		"one-off" : true,
		"left" : { "one": 20, "two": -10, "three": 0, "four": 0, },
		"left add" : ["013"],
		"right" : { "one": -50, "two": 10, "three": 0, "four": 0, },
		"right add" : [],
	},

	"013" : { #Psy_services, warning last
		"name" : psy_services,
		"description" : "This is your last warning if you care about the poeple you are working with; you will implement a no use policy!",
		"image" : "res://assets/visual/sálaS.png",
		"one-off" : true,
		"left" : { "one": 40, "two": -50, "three": 0, "four": 0, },
		"left add" : ["014"],
		"right" : { "one": -100, "two": 20, "three": 0, "four": 0, },
		"right add" : [],
	},

	"014" : { #psy_experiments, appeaerance
		"name" : psy_experimental,
		"description" : "I heard about your issues with Fredriksens but your service aligns with our methods, we can offer some of our services to you",
		"image" : "res://assets/visual/sálaStovfa.png",
		"one-off" : true,
		"left" : { "one": -10, "two": 10, "three": -10, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": -10, "three": 10, "four": 0, },
		"right add" : [],
	},

	"015" : { #Janitor, socialist cleaning
		"name" : janitor,
		"description" : "Should we implement a policy of cleaning after oneself in the dninig hall",
		"image" : "res://assets/visual/janitor2.png",
		"one-off" : true,
		"left" : { "one": 5, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -5, "two": 20, "three": 0, "four": 0, },
		"right add" : [],
	},

	"016" : { #Janitor, Art supplies 
		"name" : janitor,
		"description" : "Somebody got into the art supplies and spilled them all over the walls",
		"image" : "res://assets/visual/janitor2.png",
		"one-off" : false,
		"left" : { "one": 0, "two": -10, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": -10, "three": 0, "four": 0, },
		"right add" : [],
	},

	"017" : { #cat introduction
		"name" : cat,
		"description" : "...Mrrreooowww?",
		"image" : "res://assets/visual/köttur.png",
		"one-off" : true,
		"left" : { "one": -20, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 5, "two": -5, "three": 0, "four": 0, },
		"right add" : [],
	},

	"018" : { #hotel_person
		"name" : person_hotel,
		"description" : "Nohhh, this is a very nice place, is this a hotel, how much is the night?",
		"image" : "res://assets/visual/túristar .png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -10, "two": 10, "three": 0, "four": 0, },
		"right add" : ["004"],
	},

	"019" : { #Person from outside
		"name" : "Gina",
		"description" : "Hi i'm from out of the country and i don't know anyone here. so practicly I'm homeless. Can i stay?",
		"image" : "res://assets/visual/utanlandsM.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -10, "two": -10, "three": 0, "four": 0, },
		"right add" : [],
	},

	"020" : { #Girl young  birthday donation
		"name" : girl_young,
		"description" : "My birthday had a lot of leftovers could you take some of them?",
		"image" : "res://assets/visual/stelpa555555.png",
		"one-off" : true,
		"left" : { "one": -10, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": 10, "three": 0, "four": 0, },
		"right add" : ["021"],
	},

	"021" : { #girl young class donation
		"name" : girl_young,
		"description" : "My birthday had a lot of leftovers could you take some of them?",
		"image" : "res://assets/visual/stelpa555555.png",
		"one-off" : true,
		"left" : { "one": -10, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": 10, "three": 0, "four": 0, },
		"right add" : ["022"],
	},

	"022" : { #Jounralist end girl arc
		"name" : journalist,
		"description" : "Donations keep pouring in for the biggest homless shelter in the world",
		"image" : "res://assets/visual/jurnalist.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": 20, "three": 0, "four": 0, },
		"right add" : [],
	},

	"023" : { #Journalist end homeless seeking shelter arc
		"name" : journalist,
		"description" : "I heard about this place from an acquaintance. Are you responsible for it, do you have time for an interview?",
		"image" : "res://assets/visual/jurnalist.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": 10, "three": 0, "four": 0, },
		"right add" : [],
	},

	"024" : { #Artist introduction
		"name" : artist,
		"description" : "Hey man, nice to meet you, I used to enjoy art before I ended up on the streets, anyway I hope you don't mind me staying",
		"image" : "res://assets/visual/listaamaður.png",
		"one-off" : true,
		"left" : { "one": -150, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 10, "two": -10, "three": 0, "four": 0, },
		"right add" : ["025"],
	},

	"025" : { #Artist art supplies
		"name" : artist,
		"description" : "I have always been passsionate about art, I sure wish there were some art supplies available",
		"image" : "res://assets/visual/listaamaður.png",
		"one-off" : true,
		"left" : { "one": -10, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": -20, "three": 0, "four": 0, },
		"right add" : ["026", "016"],
	},
	
	"026" : { #Artist art show
		"name" : artist,
		"description" : "Do you think it's okay to have an art show here, I've painted some pictures.",
		"image" : "res://assets/visual/listaamaður.png",
		"one-off" : true,
		"left" : { "one": -20, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": 20, "three": 0, "four": 0, },
		"right add" : ["027"],
	},
	
	"027" : { #Journalist art show
		"name" : journalist,
		"description" : "That was a great artshow, can you tell me more about the artist?",
		"image" : "res://assets/visual/jurnalist.png",
		"one-off" : true,
		"left" : { "one": -40, "two": 20, "three": 0, "four": 0, },
		"left add" : ["028"],
		"right" : { "one": 20, "two": 20, "three": 0, "four": 0, },
		"right add" : ["028", "029"],
	},
	
	"028" : { #journalist last article
		"name" : journalist,
		"description" : "My last article got some attention, keep up the good work",
		"image" : "res://assets/visual/jurnalist.png",
		"one-off" : true,
		"left" : { "one": 20, "two": 30, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": 30, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"029" : { #Artist jounralist reaction
		"name" : artist,
		"description" : "Thank you for speaking so well of me, I got an oportunity for a project",
		"image" : "res://assets/visual/listaamaður.png",
		"one-off" : true,
		"left" : { "one": 30, "two": 0, "three": 0, "four": 0, },
		"left add" : ["030"],
		"right" : { "one": 30, "two": 0, "three": 0, "four": 0, },
		"right add" : ["030"],
	},
	
	"030" : { #Artist leaving
		"name" : artist,
		"description" : "I think it's time for me to move on from here, Thank you for all the help",
		"image" : "res://assets/visual/listaamaður.png",
		"one-off" : true,
		"left" : { "one": 50, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 50, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},
}
