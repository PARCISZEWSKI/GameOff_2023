extends Node2D

var card_current
var card_current_key: String
var card_template: PackedScene = preload("res://nodes/card.tscn")
var cards_list: Array = CardData.cards.keys()

signal left(card_stats)
signal right(card_stats)



func _ready() -> void:
	card_spawn()
	pass

func _process(_delta) -> void:
	if Input.is_action_just_pressed("left_arrow"):
		emit_signal("left", CardData.cards[card_current_key]["left"])
		card_remove()
		card_spawn()
	
	
	if Input.is_action_just_pressed("right_arrow"):
		emit_signal("right", CardData.cards[card_current_key]["right"])
		emit_signal("right", )
		card_remove()
		card_spawn()

	
	
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
func card_pick() -> String:
	var key = cards_list.pick_random()
	return key
#
func card_spawn():
	card_current = card_template.instantiate()
	$CanvasLayer.add_child(card_current)
	card_current_key = card_pick()
	card_current.setcard(card_current_key)
	card_current.anchor_top = 0.5
	card_current.anchor_right = 0.5
	card_current.anchor_bottom = 0.5
	card_current.anchor_left = 0.5
#
#
func card_remove():
	if card_current:
		card_current.queue_free()
		card_current = null
#
#


func _on_right(card_stats):
	pass # Replace with function body.


func _on_resources_empty_bar(reason):
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
