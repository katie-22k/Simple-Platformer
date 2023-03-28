extends KinematicBody2D

var velocity = Vector2.ZERO
	
func _physics_process(delta: float) -> void:
	
	apply_gravity()
	var input = Vector2.ZERO
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	# player movement
	if Input.is_action_pressed("ui_right"): 
		velocity.x = 50
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -50
	else:
		velocity.x = 0
		
		# player jump
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -200
		
	velocity = move_and_slide(velocity)
	
func apply_gravity():
		# gravity
		velocity.y += 4
		
func apply_friction():
		pass
	
func apply_acceleration(input_x):
		pass
