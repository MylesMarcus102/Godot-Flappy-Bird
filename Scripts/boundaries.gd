extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	Global.game_paused = true
	print("boundaries.gd")
	await get_tree().create_timer(0.5).timeout
	get_tree().reload_current_scene()
