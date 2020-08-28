extends Control

var sound = AudioStreamPlayer2D.new()

func _on_Start_pressed() -> void:
	_G.score = 0
	_G.Change_Level("res://World1.tscn")

func _on_Quit_pressed() -> void:
	get_tree().quit()

func _on_Quack_pressed() -> void:
	self.add_child(sound)
	sound.stream = load("res://sfx/Quack2.wav")
	sound.play()
