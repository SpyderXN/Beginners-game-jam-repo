extends Camera2D

var tween: Tween
@export var zoom_in: float = 1.0
@export var zoom_out: float = 1.0


func _on_player_eyes_closed() -> void:
	tween = create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	tween.tween_property(self, "zoom", Vector2(zoom_in, zoom_in), 1)


func _on_player_eyes_opened() -> void:
	tween = create_tween().set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
	tween.tween_property(self, "zoom", Vector2(zoom_out, zoom_out), 1)
