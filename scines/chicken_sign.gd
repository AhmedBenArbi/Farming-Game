extends Node2D


func _ready():
	$menu.visible = false





func _on_Area2D_body_entered(body):
		$menu.visible = true
		
func _on_Area2D_body_exited(body):
		$menu.visible = false




func _on_buybotton_pressed():
	pass
