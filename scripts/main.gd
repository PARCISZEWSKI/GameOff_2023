extends Node2D

var card_current
var card_current_key: String
var card_initial_position: Vector2
var card_initial_position_center: float
var card_template: PackedScene = preload("res://nodes/card.tscn")
var cards_list: Array = CardData.cards.keys()
var deck_current = ["001"]
var deck_discard = []
var deck_removed: Array[String] = []
var mouse_over_card: bool = false
var dragging: bool = false
signal left(card_stats)
signal right(card_stats)

func _ready() -> void:
	card_spawn()
	pass

func _process(delta) -> void:
	player_actions(card_swipe(delta))
		
		
func card_pick() -> String:
	var key = deck_current.pick_random()
	return key
	
	
func card_spawn():
	card_current = card_template.instantiate()
	$CanvasLayer.add_child(card_current)
	card_current_key = card_pick()
	card_current.setcard(card_current_key)
	card_initial_position = card_current.position
	card_initial_position_center = card_initial_position.x + card_current.size.x/2
	card_current.mouse_entered.connect(mouse_entered_card)
	card_current.mouse_exited.connect(mouse_exited_card)
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


func player_actions(checker: String) -> void:
	if Input.is_action_just_pressed("left_arrow") or checker == "left":
		emit_signal("left", CardData.cards[card_current_key]["left"])
		add_to_discard("left add")
		add_to_deck()
		card_spawn()
		$AudioStreamPlayer2.play()
		#print(deck_current)
		#print(deck_discard)
	
	if Input.is_action_just_pressed("right_arrow") or checker == "right":
		emit_signal("right", CardData.cards[card_current_key]["right"])
		add_to_discard("right add")
		add_to_deck()
		card_spawn()
		$AudioStreamPlayer2.play()
		#print(deck_current)
		#print(deck_discard)
		
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	pass


func add_to_deck() -> void:
	if len(deck_current) < 1:
		deck_current = deck_discard
		deck_discard = []


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


func card_swipe(delta) -> String:
	var card_center = card_current.global_position.x + card_current.size.x/2
	if Input.is_action_pressed("left_mouse"):
		if mouse_over_card or dragging:
			if Input.is_action_just_pressed("left_mouse"):
				$AudioStreamPlayer.play()
			dragging = true 
			#mouse_over_card:
			var vec = (get_global_mouse_position().x - card_center) # getting the vector from self to the mouse
			vec = vec * delta * 10 # normalize it and multiply by time and speed
			card_current.global_position.x = lerp(card_current.global_position.x, card_current.global_position.x + vec, 0.3)
			#card_current.global_position.x = clamp(card_current.global_position.x, card_current.global_position.x - card_current.size.x, card_current.global_position.x + 2*card_current.size.x )
			return ""
		return ""
	if Input.is_action_just_released("left_mouse"):
		dragging = false
		if (card_center) > card_initial_position_center + card_current.size.x*2/4:
			#print("What the fuck right")
			return "right"
		elif (card_center) < card_initial_position_center - card_current.size.x*2/4:# - card_current.size.x:
			#print("What the fuck left")
			return "left"
		else:
			#print("What the fuck init")
			card_current.position = card_initial_position
			return ""
	return ""
	
	
func mouse_entered_card():
	mouse_over_card = true
	

func mouse_exited_card():
	mouse_over_card = false
