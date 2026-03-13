extends Node2D

func _ready():
	pass






func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		Global.numofegg += 1
		self.queue_free()
	pass # Replace with function body.
