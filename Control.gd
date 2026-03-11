extends Control

func _on_new_game_button_pressed():
	get_tree().change_scene("res://scines/world.tscn")

func _on_load_game_button_pressed():
	get_tree().change_scene("res://scines/Load_Game.tscn")
 
func _on_exit_button_pressed():
	get_tree().quit()

