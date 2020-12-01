extends KinematicBody2D

var jump_force = -8000
var velocity = Vector2()
func _ready():
	pass

func _input(event):
	if event.is_action_pressed("ui_drop"):
		velocity.y -= jump_force
	pass
func _physics_process(delta):
	if position.x >= -250 and position.x <= 780:
		if Input.is_action_pressed("ui_left"):
			velocity.x = -200
		elif Input.is_action_pressed("ui_right"):
			velocity.x = 200
		else:
			velocity.x = 0	
	

	move_and_slide(velocity)
	if position.x < -250 : position.x = -250
	if position.x > 780 : position.x = 780
	pass
