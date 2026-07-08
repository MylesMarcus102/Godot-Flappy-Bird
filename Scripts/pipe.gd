extends Area2D
func _on_body_entered(_body: Node2D) -> void:
	Global.game_paused = true
	await get_tree().create_timer(0.5).timeout
	get_tree().reload_current_scene()

	print("collision")


func _on_area_2d_body_entered(_body: Node2D) -> void:
	Global.score += 1
	print(Global.score)
	
