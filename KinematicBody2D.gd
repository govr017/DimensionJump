extends KinematicBody2D

const TYPE = "Player"

var aud_player = AudioStreamPlayer2D.new()
var motion = Vector2()
const GRAVITY = 5
const SPEED = 100
const UP = Vector2(0, -1 )
const JUMP_HEIGHT = -150








func _physics_process(delta):
	motion.y += GRAVITY
	
	
	
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$Sprite.flip_h = false
		$Sprite.play("Walk")
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$Sprite.flip_h = true
		$Sprite.play("Walk")
	
	
	else:
		motion.x = 0
		$Sprite.play("idle")
		$AnimationPlayer.play("Idle")
	
	if is_on_floor():
		if Input. is_action_pressed("ui_up"):
			$AnimationPlayer.play("Jump")
			motion.y = JUMP_HEIGHT
			self.add_child(aud_player)
			aud_player.stream = load("res://sfx/Jump.wav")
			aud_player.play()
			
			
			
	else:
		$AnimationPlayer.play("Jump")
		$Sprite.play("Jump")
	
	
		
	
	
	
		
		
		
		
	
	
	motion = move_and_slide(motion, UP)
	pass



