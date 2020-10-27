extends KinematicBody2D

var aud_player = AudioStreamPlayer2D.new()
var motion = Vector2()
var GRAVITY = 5
var SPEED = 90
const UP = Vector2(0, -1 )
const JUMP_HEIGHT = -150
const SPIN_JUMP_HEIGHT = -200

func _ready():
	$Particles2D.hide()


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
	
	if is_on_floor():
		if Input. is_action_pressed("dj_z"):
			motion.y = JUMP_HEIGHT
			self.add_child(aud_player)
			aud_player.stream = load("res://sfx/Jump.wav")
			aud_player.play()
		if Input. is_action_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
			self.add_child(aud_player)
			aud_player.stream = load("res://sfx/Jump.wav")
			aud_player.play()
		if Input. is_action_pressed("spacebar"):
			motion.y = JUMP_HEIGHT
			self.add_child(aud_player)
			aud_player.stream = load("res://sfx/Jump.wav")
			aud_player.play()
		
	
	else:
		$Sprite.play("Jump")
	
	
	
	if Input.is_action_just_pressed("dj_x"):
		aud_player.stream = load("res://sfx/Spin1.wav")
		aud_player.play()
		$Sprite.play("Spin")
	if Input.is_action_pressed("dj_x"):
		SPEED = 50
		GRAVITY = 2
		$Particles2D.show()
		$Sprite.play("Spin")
	elif Input.is_action_just_released("dj_x"):
		SPEED = 100
		GRAVITY = 5
		aud_player.stop()
		$Particles2D.hide()
		$Sprite.play("Spin")
	else:
		if is_on_floor():
			SPEED = 100
			GRAVITY = 5
	motion = move_and_slide(motion, UP)
	pass
