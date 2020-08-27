extends Area2D

func _physics_process(delta: float) -> void:
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			print("Player touched DeathZone")
			get_tree().reload_current_scene()
