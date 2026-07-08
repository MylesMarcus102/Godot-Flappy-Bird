extends Node2D

@export var pipe_scene: PackedScene = preload("res://Scenes/pipe.tscn")

func _on_timer_timeout() -> void:
	if Global.player_x > 940:
		var pipe = pipe_scene.instantiate()
		pipe.position = Vector2(Global.player_x+350, randf_range(200, 500))
		add_child(pipe)
