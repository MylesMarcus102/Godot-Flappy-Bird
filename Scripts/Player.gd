extends CharacterBody2D
@export var scrolling_speed = 6000
@export var gravity = 980

func _physics_process(delta: float) -> void:
	if not Global.game_paused:
		velocity.x = scrolling_speed*delta
		velocity.y += gravity * delta
		Global.player_x = float(position.x)
		if Input.is_action_just_pressed("up"):
			velocity.y = -300
		move_and_slide()
