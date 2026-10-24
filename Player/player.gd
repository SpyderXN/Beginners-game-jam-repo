extends CharacterBody2D

#Signals
signal eyes_closed
signal eyes_opened

#Eyes Variable
@export var eye: bool
@onready var vision_area: Area2D = $"Vision Area"

#Movement Variables
@export var max_speed: int = 10
@export var acceleration: int = 10
@export var friction: int = 5

func _ready() -> void:
	update_eyes()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("EyeButton"):
		eye = not eye
		update_eyes()

#Player eyes script
func update_eyes() -> void:
	if eye:
		vision_area.visible = false
		vision_area.set_deferred("monitorable", false)
		eyes_closed.emit()
		print("Eyes closed")
	else:
		vision_area.visible = true
		vision_area.set_deferred("monitorable", true)
		eyes_opened.emit()
		print("Eyes opened")

#Player movement script
func _physics_process(delta: float) -> void:
	var input = Vector2(
		Input.get_action_strength("Right") - Input.get_action_strength("Left"),
		Input.get_action_strength("Down") - Input.get_action_strength("Up")
	).normalized()
	
	var lerp_weight = delta * (acceleration if input else friction)
	velocity = lerp(velocity, input * max_speed, lerp_weight)
	
	move_and_slide()

func _on_player_collision_body_entered(body: Node2D) -> void:
	if body.is_in_group("NPC") and eye:
		eye = false
		update_eyes()

func _on_vision_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("NPC"):
		print("Vision: ", body.name)
		Globals.petrification(1)
