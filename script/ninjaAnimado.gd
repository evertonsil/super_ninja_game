extends KinematicBody2D


const move_speed = 30

var move_dir = 0

func _physics_process(delta): #FPS
	if Input.is_action_pressed("right"):
		$ninjaDesenho.animation = "Run"
		$ninjaDesenho.flip_h = false
		move_dir += 1
		
	elif Input.is_action_pressed("left"):
		$ninjaDesenho.animation = "Run"
		$ninjaDesenho.flip_h = true
		move_dir -= 1	
	else:
		$ninjaDesenho.animation = "Idle"
		move_dir = 0	
	move_and_slide(Vector2 (move_dir * move_speed, 0) , Vector2 (0, -1))
	
	
	
	
	
	
