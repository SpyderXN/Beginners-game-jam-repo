extends Control

@onready var amount: Label = $HBoxContainer/Amount
@onready var max_amount: Label = $HBoxContainer/MaxAmount

func _process(_delta: float) -> void:
	update_amount()

func update_amount() -> void:
	amount.text = str(Globals.min_petrified)
	max_amount.text = str(Globals.max_petrified)
