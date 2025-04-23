extends KinematicBody2D

const gravity: = 0.5
var speed = 150
var velocity = Vector2()



func _process(delta):
	velocity.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))

	global_position += speed * velocity * delta
	velocity.y =+gravity
	
	move_and_slide(velocity)
		
