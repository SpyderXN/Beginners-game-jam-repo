extends CharacterBody2D


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "Vision Area":
		print("Player Spotted")
		modulate = Color(1, 5, 2, 5)
