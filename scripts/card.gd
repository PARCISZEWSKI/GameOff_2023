extends PanelContainer
#extends Node2D

var card_desc: Label
var card_title: Label
var card_image: TextureRect
@onready var cards = CardData.cards

# Called when the node enters the scene tree for the first time.
func _ready():
	card_desc = $MarginContainer/VBoxContainer/Label
	card_title = $MarginContainer/VBoxContainer/Label2
	card_image = $MarginContainer/VBoxContainer/TextureRect
	#setcard("002")
	
func setcard(card_key: String) -> void:
	print(cards[card_key]["description"])
	card_desc.text = cards[card_key]["description"]
	card_title.text = cards[card_key]["name"]
	card_image.texture = load(cards[card_key]["image"])
	pass
	
