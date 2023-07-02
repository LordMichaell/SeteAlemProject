extends KinematicBody2D

export(int) var speed

var velocity: Vector2

func _physics_process(_delta: float) -> void:
	_move()
	
	
	
	
func _move() -> void:
	var direction_vector: Vector2 = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()
	
	velocity = direction_vector * speed
	
	velocity = move_and_slide(velocity)
