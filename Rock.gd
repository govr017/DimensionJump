extends RigidBody2D

var picked = false

func _input(event):
	if Input.is_action_just_pressed("c"):
		var bodies = $Area2D.get_overlapping_bodies()
		
		for body in bodies:
			if body.name == "Player" and picked == false:
				picked = true
	if Input.is_action_just_released("c") and picked == true:
		picked = false
	if Input.is_action_just_pressed("v") and picked == true:
		picked = false
		if get_node("../Player/Sprite").flip_h == false:
			apply_impulse(Vector2(), Vector2(200, -50))
		else:
			apply_impulse(Vector2(), Vector2(-200, -50))
func _physics_process(delta):
	if picked == true:
		self.position = get_node("../Player/Position2D").global_position
		sleeping = true
	else:
		sleeping = false
