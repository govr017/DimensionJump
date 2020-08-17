extends Control



func _on_Start_pressed() -> void:
	
	# sound sync
	self.add_child($AudioStreamPlayer2D)
	$AudioStreamPlayer2D.stream = load("res://sfx/Blip_Select.wav")
	$AudioStreamPlayer2D.play()
	
	get_tree().change_scene("res://World.tscn")
	

func _on_Quit_pressed() -> void:
	get_tree().quit()
