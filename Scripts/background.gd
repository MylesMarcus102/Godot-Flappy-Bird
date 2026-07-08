extends CharacterBody2D
@export var scrolling_speed = 6000
@export var speed = 300

func _physics_process(delta: float) -> void:
	if not Global.game_paused:
		velocity.x = scrolling_speed*delta
		move_and_slide()
