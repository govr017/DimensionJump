extends Area2D

func _on_Ruby_body_entered(body: Node) -> void:
	if body.name == "Player":
		_M.score += 1
		_G.score += 1
		print("Ruby: pickup(). Score: "+str(_G.score))
		queue_free()
