extends Node

var score_on_level_start = 0  # Счёт Игрока, на момент начала уровня
var score = 0      # Счёт Игрока текущий

func Change_Level (level_res):
	score_on_level_start = score
	print("ChangeLevel: '"+level_res + "'. Score: "+str(score))
	get_tree().change_scene(level_res)

func Restart_Level ():
	score = score_on_level_start
	get_tree().reload_current_scene()
