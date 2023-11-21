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
const artist = 'Artist'
#const 

var cards: Dictionary = { 
	"001" : {
		"name" : "Introduction",
		"description" : "Welcome, welcome. You have been appointed to take care of the largest homeless shelter yet. It will be a perilous journey best of luck to you!",
		"image" : "res://assets/visual/Person_icon_BLACK-01.svg.png",
		"one-off" : true,
		"left" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"left add" : ["002"],
		"right" : { "one": 0, "two": 0, "three": 0, "four": 0, },
		"right add" : ["002"],
	},
	
	"002" : { #Homeless Phase One spil
		"name" : homeless,
		"description" : "I found myself down my luck. Is there any chance I can stay here, it would mean a lot",
		"image" : "res://assets/visual/output-onlinepngtools.png",
		"one-off" : false,
		"left" : { "one": -200, "two": -200, "three": -200, "four": -200, },
		"left add" : [],
		"right" : { "one": 20, "two": -20, "three": 0, "four": 0, },
		"right add" : ["003"],
	},
	
	"003" : { #Homeless leads to journalist
		"name" : homeless,
		"description" : "This is a very nice facility, I want to let my friends know about it, is that alright with you?",
		"image" : "path to image",
		"one-off" : false,
		"left" : { "one": -20, "two": 0, "three": 10, "four": -10, },
		"left add" : [],
		"right" : { "one": 20, "two": -20, "three": -20, "four": 0, },
		"right add" : [],
	},
	
	"004" : {
		"name" : homeless,
		"description" : "Even though this is a nice place, I think that it should be reserved for the people in need",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": -20, "two": 0, "three": 0, "four": 0, },
		"left add" : [],
		"right" : { "one": 20, "two": -20, "three": 0, "four": 0, },
		"right add" : [],
	},
	
	"005" : {
		"name" : "Ung Stelpa",
		"description" : "Ég var að baka köku með mömmu, viljið þið afgánging?",
		"image" : "res://assets/visual/output-onlinepngtools.png",
		"one-off" : false,
		"left" : { "one": -20, "two": -20, "three": -20, "four": -20, },
		"left add" : [],
		"right" : { "one": 20, "two": 20, "three": 20, "four": 20, },
		"right add" : [],
	},
	
	"006" : {
		"name" : "Ræstitæknir",
		"description" : "Þessi kúkaði upp á bak, eigum við að vísa honum út?",
		"image" : "path to image",
		"one-off" : false,
		"left" : { "one": -20, "two": -20, "three": -20, "four": -20, },
		"left add" : [],
		"right" : { "one": 20, "two": 20, "three": 20, "four": 20, },
		"right add" : [],
	},
	
	"007" : {
		"name" : "Fjárfestir",
		"description" : "Ég heyrði af þessu verkefni, og ég hef áhuga á því að fjárfesta en ég þarf að sjá árangur áður en nokkuð er ákveðið. Hlakka til að sjá hverning þetta fer",
		"image" : "path to image",
		"one-off" : false,
		"left" : { "one": -20, "two": -20, "three": -20, "four": -20, },
		"left add" : [],
		"right" : { "one": 20, "two": 20, "three": 20, "four": 20, },
		"right add" : [],
	},
	
	"008" : {
		"name" : "Heimilislaus",
		"description" : "Hæ ég hef engan stað til að vera á og ég heyrði af þessu hér. Má ég vera hér",
		"image" : "path to image",
		"one-off" : false,
		"left" : { "one": -20, "two": -20, "three": -20, "four": -20, },
		"left add" : [],
		"right" : { "one": 20, "two": 20, "three": 20, "four": 20, },
		"right add" : [],
	},
	
	"009" : {
		"name" : "Intro",
		"description" : "Fyrsta spilið í leiknum",
		"image" : "path to image",
		"one-off" : true,
		"left" : { "one": -200, "two": -200, "three": -200, "four": -200, },
		"left add" : [],
		"right" : { "one": 5, "two": 0, "three": 0, "four": 0, },
		"right add" : ["001", "002"],
	},
}
