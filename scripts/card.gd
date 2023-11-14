extends PanelContainer
#extends Node2D

	
@onready var cards = CardData.cards

# Called when the node enters the scene tree for the first time.
func _ready():
	#print(cards["008"]["description"])
	pass
	#setcard("002")
	
func setcard(card_key) -> void:
	print(cards[card_key]["description"])
	$MarginContainer/VBoxContainer/Label.text = cards[card_key]["description"]
	$MarginContainer/VBoxContainer/Label2.text = cards[card_key]["name"]
	$MarginContainer/VBoxContainer/TextureRect.texture = load(cards[card_key]["image"])
	pass
	
