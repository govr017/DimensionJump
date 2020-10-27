extends KinematicBody2D

func _on_Area2D_body_entered(body: Node) -> void:
	if body.name == "Player":
		print("Player touched Spike")
		_G.Restart_Level()
