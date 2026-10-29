extends Control

@onready var amount: Label = $HBoxContainer/Amount
@onready var max_amount: Label = $HBoxContainer/MaxAmount
@onready var lose_panel: PanelContainer = $"Lose Panel"
@onready var eye_close: Sprite2D = $HBoxContainer/EyeClose
@onready var eye_open: Sprite2D = $HBoxContainer/EyeOpen

var open_tex: String
var close_tex: String

func _process(_delta: float) -> void:
	update_amount()

func update_amount() -> void:
	amount.text = str(Globals.min_petrified)
	max_amount.text = str(Globals.max_petrified)

func _on_main_amount_crossed(is_crossed: bool) -> void:
	if is_crossed:
		lose_panel.visible = true
	else:
		lose_panel.visible = false

func _on_retry_pressed() -> void:
	TransitionScene.change_scene_to("res://Level-1/level_1.tscn")

func _on_menu_pressed() -> void:
	TransitionScene.change_scene_to("res://Menu/menu.tscn")


#func _on_player_eye_sprite(is_open: bool) -> void:
	#if is_open:
		#eye_open.texture = open_tex
	#else:
		#eye_open.visible = false
		#eye_close.visible = true
