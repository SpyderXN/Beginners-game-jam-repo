extends Node2D
class_name Main

@export var restricted_amount: int = 0
var game_over: bool = false

signal amount_crossed(is_crossed: bool)

func _ready() -> void:
	game_over = false
	Globals.min_petrified = 0
	Globals.max_petrified = restricted_amount

func _process(_delta: float) -> void:
	if Globals.min_petrified >= restricted_amount and not game_over:
		game_over = true
		amount_crossed.emit(true)
		print("Game Over")
	
