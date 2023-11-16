extends CharacterBody2D

const SPEED = 155.0
func get_input():
	if Input.is_action_pressed("ui_right"):
		position.x += SPEED * get_process_delta_time()
		$AnimationPlayer.play("Ghost_Right")
	elif Input.is_action_pressed("ui_left"):
		position.x -= SPEED * get_process_delta_time()
		$AnimationPlayer.play("Ghost_Left")
	elif Input.is_action_pressed("down"):
		position.y += SPEED * get_process_delta_time()
		$AnimationPlayer.play("Ghost_Down")
	elif Input.is_action_pressed("up"):
		position.y -= SPEED * get_process_delta_time()
		$AnimationPlayer.play("Ghost_Up")
		
		
func _physics_process(_delta):
	get_input()
	move_and_slide()

	
