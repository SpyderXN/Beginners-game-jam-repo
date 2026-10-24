extends Node

var min_petrified: int
var max_petrified: int

func _process(_delta: float) -> void:
	if min_petrified == max_petrified:
		min_petrified = max_petrified

func petrification(value) -> void:
	var score = min_petrified + value
	min_petrified = score
	print(score)
