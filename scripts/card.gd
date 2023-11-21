extends Panel
#extends Node2D

	
@onready var cards = CardData.cards

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func setcard(card_key) -> void:
	
	$MarginContainer/VBoxContainer/Label.text = cards[card_key]["description"]
	$MarginContainer/VBoxContainer/Label2.text = cards[card_key]["name"]
	$MarginContainer/VBoxContainer/TextureRect.texture = load(cards[card_key]["image"])
	pass
	
