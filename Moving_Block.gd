extends KinematicBody2D

const SPEED = 30
const UP = Vector2(0,  -1)

var motion = Vector2()

var direction = 1

func _physics_process(delta: float) -> void:
	
	if direction == 1:
		$Sprite.flip_h = false
	else:
		$Sprite.flip_h = true
	
	motion.x = SPEED * direction
	$Sprite.play("default")
	
	motion = move_and_slide(motion, UP)
	
	if is_on_wall():
		direction = direction * -1
