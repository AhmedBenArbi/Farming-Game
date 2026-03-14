extends Node2D





func _ready():
	get_tree().paused = false
	self.visible = false
	pass 


func _physics_process(delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = true
		show()


func _on_resume_pressed():
	get_tree().paused = false
	hide()
	
	pass # Replace with function body.



func _on_sttings_pressed():
	pass 

func _on_exit_pressed():
	get_tree().change_scene("res://scines/Main menu.tscn")
	pass 







func _on_Button_pressed():
	print("hi")
