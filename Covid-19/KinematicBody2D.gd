extends KinematicBody2D
#movements
const UP = Vector2(0, -1)
var motion = Vector2()
var speed = 200
var gravity = 10
var jump = -400

func _physics_process(delta):
	motion.y += gravity
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = jump
	
	move_and_slide(motion, UP)
