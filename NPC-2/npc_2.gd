extends CharacterBody2D

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var area_2d: Area2D = $Area2D

var spotted = false

func _process(_delta: float) -> void:
	if spotted == true:
		update_area()

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "Vision Area":
		print("Player Spotted")
		sprite_2d.modulate = Color(1, 5, 2, 5)
		spotted = true

func update_area() -> void:
	area_2d.visible = false
	area_2d.set_deferred("monitorable", false)
