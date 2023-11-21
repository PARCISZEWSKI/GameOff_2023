extends Node2D

var card_current
var card_current_key: String
var card_template: PackedScene = preload("res://nodes/card.tscn")
var cards_list: Array = CardData.cards.keys()
var deck_current = ["009"]
var deck_discard = []
var deck_removed: Array[String] = []

signal left(card_stats)
signal right(card_stats)

func _ready() -> void:
	card_spawn()
	pass

func _process(_delta) -> void:
	player_actions()
		
		
func card_pick() -> String:
	var key = deck_current.pick_random()
	return key
	
	
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
		deck_current.pop_at(deck_current.find(card_current_key))
		card_current.queue_free()
		card_current = null


func player_actions() -> void:
	if Input.is_action_just_pressed("left_arrow"):
		emit_signal("left", CardData.cards[card_current_key]["left"])
		add_to_discard("left add")
		add_to_deck()
		card_spawn()
	
	if Input.is_action_just_pressed("right_arrow"):
		emit_signal("right", CardData.cards[card_current_key]["right"])
		add_to_discard("right add")
		add_to_deck()
		card_spawn()
		
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	pass


func add_to_deck() -> void:
	if len(deck_current) < 1:
		deck_current = deck_discard


func add_to_discard(choice_side: String = "") -> void:
	var add_cards = CardData.cards[card_current_key][choice_side]
	if add_cards:
		deck_discard = deck_discard + add_cards
	if CardData.cards[card_current_key]["one-off"] == false:
		deck_discard.append(card_current_key)
	card_remove()


func _on_resources_empty_bar(reason):
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	pass
