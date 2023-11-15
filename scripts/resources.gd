extends HBoxContainer

func update_meters(updates):
	$one.value += updates["one"]
	$two.value += updates["two"]
	$three.value += updates["three"]
	$four.value += updates["four"]

func _on_main_left(card_stats):
	update_meters(card_stats)


func _on_main_right(card_stats):
	update_meters(card_stats)
