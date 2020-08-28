extends Area2D

export(String, FILE, "World*.tscn") var world_scene

func _physics_process(delta: float) -> void:
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			_G.Change_Level(world_scene)
