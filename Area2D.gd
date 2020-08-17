extends Area2D




func _physics_process(delta: float) -> void:
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			
			
			
			get_tree().reload_current_scene()
			
