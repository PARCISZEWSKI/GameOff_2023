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

const homeless = 'Jens'
const artist = 'Lorenzo'
const girl_young = 'Jess'
const janitor = "Mike"
const investor = "Lafayette"
const person_one = "Georgia"
const psy_services = "Helga"
const psy_experimental = "Jamal"
const cat = "Chonkers"
const person_hotel = "Dirty Larry"
const journalist = "Cassandra"

var cards: Dictionary = { 
	"001" : {
		"name" : "Introduction",
		"description" : "Welcome, welcome. You have been appointed to take care of the largest homeless shelter yet. It will be a perilous journey best of luck to you!",
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
		"one-off" : false,
		"left" : { "one": -200, "two": -200, "three": -200, "four": -200, },
		"left add" : [],
		"right" : { "one": 20, "two": -20, "three": 0, "four": 0, },
		"right add" : ["003", "005", "006", "007"],
	},
	
	"003" : { #Homeless leads to journalist
		"name" : homeless,
		"description" : "This is a very nice facility, I want to let my friends know about it, is that alright with you?",
		"image" : "res://assets/visual/maður.png",
		"one-off" : false,
		"left" : { "one": -20, "two": 0, "three": 10, "four": -10, },
		"left add" : [],
		"right" : { "one": 20, "two": -20, "three": -20, "four": 0, },
		"right add" : ["023"],
	},
	
	"004" : { #Homeless angry about hotel
		"name" : homeless,
		"description" : "Even though this is a nice place, I think that it should be reserved for the people in need",
		"image" : "res://assets/visual/maður.png",
		"one-off" : true,
		"left" : { "one": -20, "two": 0, "three": 0, "four": 0, },
		"left add" : ["018"],
		"right" : { "one": 20, "two": -20, "three": 0, "four": 0, },
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
		"right add" : ["20"],
	},
	
	"006" : { #Janitor wanting to throw people out
		"name" : janitor,
		"description" : "There has been an accident in one of the bathrooms, should we get rid of the culprit.",
		"image" : "res://assets/visual/janitor2.png",
		"one-off" : false,
		"left" : { "one": -50, "two": 0, "three": -0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": -20, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"007" : { #Investor card
		"name" : investor,
		"description" : "I like what you're doing. If you can manage some progress I could see myself offering some monetary support",
		"image" : "res://assets/visual/invesstor.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": 10, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"008" : { #Persone one, uneccesary service
		"name" : person_one,
		"description" : "I think this service is unnecessary because everyone has an equal opportunity to earn money",
		"image" : "path to image",
		"one-off" : false,
		"left" : { "one": 10, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -10, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"009" : { #Person one, homeless in gardens
		"name" : person_one,
		"description" : "Good day I wanted to let you know that since you came here I have seen 4 homeless people in my garden, I find it unacceptable. I think you should talk to them and forbid them from entering other people's gardens",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": 30, "two": -10, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -30, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"010" : { #Person one, scared of the homeless
		"name" : person_one,
		"description" : "I dont know how you can work with these \"people\". Arent you always scared?",
		"image" : "path to image",
		"one-off" : false,
		"left" : { "one": 20, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -10, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},

	"011" : { #Psy_services, introduction
		"name" : psy_services,
		"description" : "Hi, you can count on our psychology services for your shelter population, please let them know we are available",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 10, "two": -10, "three": 0, "four": 0, },
		"right add" : [],
	},

	"012" : { #Psy_services, warning
		"name" : psy_services,
		"description" : "I think that there was a misunderstanding. We do not provide services for people under the influence, we want to see you ban drug use.",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": 20, "two": -10, "three": 0, "four": 0, },
		"left add" : ["013"],
		"right" : { "one": -50, "two": 10, "three": 0, "four": 0, },
		"right add" : [],
	},

	"013" : { #Psy_services, warning last
		"name" : psy_services,
		"description" : "This is your last warning if you care about the poeple you are working with; you will implement a no use policy!",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": 40, "two": -50, "three": 0, "four": 0, },
		"left add" : ["014"],
		"right" : { "one": -100, "two": 20, "three": 0, "four": 0, },
		"right add" : [],
	},

	"014" : { #psy_experiments, appeaerance
		"name" : psy_experimental,
		"description" : "I heard about your issues with Helga but your service aligns with our methods, we can offer some of our services to you",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": -10, "two": 10, "three": -10, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": -10, "three": 10, "four": 0, },
		"right add" : [],
	},

	"015" : { #Janitor, socialist cleaning
		"name" : janitor,
		"description" : "Should we implement a policy of cleaning after one self in the dninig hall",
		"image" : "res://assets/visual/janitor2.png",
		"one-off" : true,
		"left" : { "one": 5, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -5, "two": +20, "three": 0, "four": 0, },
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
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -10, "two": 10, "three": 0, "four": 0, },
		"right add" : ["004"],
	},

	"019" : { #Person from outside
		"name" : "Gina",
		"description" : "Hi i'm from out of the country and i don't know anyone here. so practicly I'm homeless. Can i stay?",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": 10, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": -10, "two": -10, "three": 0, "four": 0, },
		"right add" : ["004"],
	},

	"020" : { #Girl young  birthday donation
		"name" : girl_young,
		"description" : "My birthday had a lot of leftovers could you take some of them?",
		"image" : "res://assets/visual/stelpa555555.png",
		"one-off" : true,
		"left" : { "one": -10, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": 10, "three": 0, "four": 0, },
		"right add" : ["21"],
	},

	"021" : { #girl young class donation
		"name" : girl_young,
		"description" : "My birthday had a lot of leftovers could you take some of them?",
		"image" : "res://assets/visual/stelpa555555.png",
		"one-off" : true,
		"left" : { "one": -10, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": 10, "three": 0, "four": 0, },
		"right add" : ["22"],
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
		"description" : "I heard about this place from an acquaintance. Are you responsible for it",
		"image" : "res://assets/visual/jurnalist.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},

	"024" : { #Artist introduction
		"name" : artist,
		"description" : "Hey man, nice to meet you, I used to enjoy art before I ended up on the streets, anyway I hope you don't mind me staying",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": -150, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 10, "two": 0, "three": 0, "four": 0, },
		"right add" : ["25"],
	},

	"025" : { #Artist art supplies
		"name" : artist,
		"description" : "I have always been passsionate about art, I sure wish there were some art supplies available",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : ["26", "16"],
	},
	
	"026" : { #Artist art show
		"name" : artist,
		"description" : "Do you think it's okay to have an art show here, I've painted some pictures.",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : ["27",],
	},
	
	"027" : { #Journalist art show
		"name" : journalist,
		"description" : "That was a great artshow, can you tell me more about the artist?",
		"image" : "res://assets/visual/jurnalist.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : ["28"],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : ["28", "29"],
	},
	
	"028" : { #journalist last article
		"name" : journalist,
		"description" : "My last article got some attention, keep up the good work",
		"image" : "res://assets/visual/jurnalist.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"029" : { #Artist jounralist reaction
		"name" : artist,
		"description" : "Thank you for speaking so well of me, I got an oportunity for a project",
		"image" : "path_to_image",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : ["30"],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : ["30",],
	},
	
	"030" : { #Artist leaving
		"name" : artist,
		"description" : "I think it's time for me to move on from here, Thank you for all the help",
		"image" : "path_to_image",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : [],
	},
}
