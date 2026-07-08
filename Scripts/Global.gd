extends Node

var score: int = 0
var player_x: float = 0.0
var game_paused: bool = true
func _process(_delta: float) -> void:
	if game_paused:
		await get_tree().create_timer(0.5).timeout 
		score = 0
