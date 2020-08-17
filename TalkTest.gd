extends Area2D

var Story_Reader_Class = load("res://addons/EXP-System-Dialog/Reference_StoryReader/EXP_StoryReader.gd")
var Story_Reader = Story_Reader_Class.new()

var story = load("TEXT1.tres")




func _physics_process(delta: float) -> void:
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			Story_Reader.read(story)
			
			var did : int = 1
			var nid : int = 1
			var text : String = Story_Reader.get_text(did, nid)
			print(text)
