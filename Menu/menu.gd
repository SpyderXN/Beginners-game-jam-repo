extends CanvasLayer


func _on_play_pressed() -> void:
	TransitionScene.change_scene_to("res://Level-1/level_1.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
