extends Control

@onready var amount: Label = $HBoxContainer/Amount
@onready var max_amount: Label = $HBoxContainer/MaxAmount
@onready var lose_panel: PanelContainer = $"Lose Panel"

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
	pass # Replace with function body.
