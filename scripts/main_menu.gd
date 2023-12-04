extends Node2D

@onready var main_level = preload("res://scenes/main.tscn")

var fullscreen := true 

func play_sound() -> void:
	$AudioStreamPlayer.play()
	await $AudioStreamPlayer.finished

func _on_button_button_down():
	play_sound()
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	

func _on_button_2_button_down():
	play_sound()
	if fullscreen:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		$CanvasLayer/PanelContainer/MarginContainer/VBoxContainer/Button2.text = "fullscreen"
		fullscreen = false
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		$CanvasLayer/PanelContainer/MarginContainer/VBoxContainer/Button2.text = "Windowed"
		fullscreen = true
	


func _on_button_3_button_up():
	play_sound()
	get_tree().quit()
