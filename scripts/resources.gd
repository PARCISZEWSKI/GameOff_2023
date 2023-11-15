extends HBoxContainer

signal empty_bar(reason)

func _process(delta):
	if $one.value < 1:
		emit_signal("empty_bar", "one")
	if $two.value < 1 or $two.value > 99:
		emit_signal("empty_bar", "two")
	if $three.value < 1 or $three.value > 99:
		emit_signal("empty_bar", "three")
	if $four.value < 1 or $four.value > 99:
		emit_signal("empty_bar", "four")
		
func update_meters(updates):
	$one.value += updates["one"]
	$two.value += updates["two"]
	$three.value += updates["three"]
	$four.value += updates["four"]

func _on_main_left(card_stats):
	update_meters(card_stats)


func _on_main_right(card_stats):
	update_meters(card_stats)
