extends Camera2D

var tween: Tween


func _on_player_eyes_closed() -> void:
	tween = create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	tween.tween_property(self, "zoom", Vector2(1.5, 1.5), 1)


func _on_player_eyes_opened() -> void:
	tween = create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	tween.tween_property(self, "zoom", Vector2(1.0, 1.0), 1)
