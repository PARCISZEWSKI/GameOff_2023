extends Node2D

var card_current
var card_template: PackedScene = preload("res://nodes/card.tscn")
var cards_list: Array = CardData.cards.keys()


func _ready() -> void:
	card_spawn()

func _process(_delta) -> void:
	pass

func card_pick() -> String:
	var key = cards_list.pick_random()
	print(key)
	return key
	pass

func card_spawn():
	var card = card_template.instantiate()
	card.setcard(card_pick())
	get_parent().add_child(card) 
	
func card_remove():
	card_current.queue_free()
	card_spawn()
