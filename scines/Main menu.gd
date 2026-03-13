extends Control


func _ready():
	pass # Replace with function body.



func _on_load_pressed():
	get_tree().change_scene("res://scines/load_game.tscn")
	pass 


func _on_play_pressed():
	get_tree().change_scene("res://scines/loding scrine.tscn")
	pass 


func _on_exit_pressed():
	get_tree().quit()
	pass 
