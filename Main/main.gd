extends Node2D
class_name Main

@export var restricted_amount: int = 0
var game_over: bool = false

func _ready() -> void:
	Globals.max_petrified = restricted_amount

func _process(_delta: float) -> void:
	if Globals.min_petrified >= restricted_amount and not game_over:
		game_over = true
		print("Game Over")
	
