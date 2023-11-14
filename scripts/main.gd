extends Node2D

var card_current
var card_template: PackedScene = preload("res://nodes/card.tscn")
var cards_list: Array = CardData.cards.keys()
var card_direction: bool = true


func _ready() -> void:
	
	pass

func _process(_delta) -> void:
	if Input.is_action_just_pressed("right_arrow"):
		card_direction = true
		card_remove()
		card_spawn()
		
	if Input.is_action_just_pressed("left_arrow"):
		card_direction = false
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
	card_current.setcard(card_pick())
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
