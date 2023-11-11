extends Node2D

var card_current
var card_template: PackedScene = preload("res://nodes/card.tscn")
var cards_list: Array = CardData.cards.keys()


func _ready() -> void:
	pass

func _process(_delta) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		card_remove()
		card_spawn()

func card_pick() -> String:
	var key = cards_list.pick_random()
	print(key)
	return key

func card_spawn():
	card_current = card_template.instantiate()
	card_current.setcard(card_pick())
	$CanvasLayer.add_child(card_current) 
	
	
func card_remove():
	if card_current:
		card_current.queue_free()
		card_current = null
		

func _on_ready():
	card_spawn()
