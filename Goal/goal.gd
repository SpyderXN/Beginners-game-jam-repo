extends Area2D

@export var next_level: String = ""

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		TransitionScene.change_scene_to(next_level)
