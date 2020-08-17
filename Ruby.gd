extends Area2D




func _on_Ruby_body_entered(body: Node) -> void:
	if body.name == "Player":
		
		queue_free()
