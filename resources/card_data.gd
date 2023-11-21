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


var cards: Dictionary = { 
	"001" : {
		"name" : "Heimilislaus",
		"description" : "Þetta er góð aðstaða, má ég dreifa upplýsingum til feðga mína",
		"image" : "res://assets/visual/Person_icon_BLACK-01.svg.png",
		"one-off" : false,
		"left" : { "one": -20, "two": -20, "three": -20, "four": -20, },
		"left add" : [],
		"right" : { "one": 20, "two": 20, "three": 20, "four": 20, },
		"right add" : [],
	},
	
	"002" : {
		"name" : "Fólk",
		"description" : "Nohhh, er þetta hotel, heyrðu hvað kostar nóttin?",
		"image" : "res://assets/visual/output-onlinepngtools.png",
		"one-off" : false,
		"left" : { "one": -20, "two": -20, "three": -20, "four": -20, },
		"left add" : [],
		"right" : { "one": 20, "two": 20, "three": 20, "four": 20, },
		"right add" : [],
	},
	
	"003" : {
		"name" : "Sálfræði Stofa",
		"description" : "Við veitum ekki þjónustu handa fólki sem er undir áhrifum, við viljum sjá þig banna fíkniefna notkun",
		"image" : "path to image",
		"one-off" : false,
		"left" : { "one": -20, "two": -20, "three": -20, "four": -20, },
		"left add" : [],
		"right" : { "one": 20, "two": 20, "three": 20, "four": 20, },
		"right add" : [],
	},
	
	"004" : {
		"name" : "Karen",
		"description" : "Ég hata heimilislaust fólk, ég vil ekki sjá það",
		"image" : "path to image",
		"one-off" : false,
		"left" : { "one": -20, "two": -20, "three": -20, "four": -20, },
		"left add" : [],
		"right" : { "one": 20, "two": 20, "three": 20, "four": 20, },
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
