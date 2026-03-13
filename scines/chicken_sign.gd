extends Node2D


func _ready():
	$menu.visible = false





func _on_Area2D_body_entered(body):
	if Global.numofchicken != 4:
		$menu.visible = true
		
func _on_Area2D_body_exited(body):
		$menu.visible = false




func _on_buybotton_pressed():
	if Global.numofchicken < 4:
		if Global.coins >= (Global.numofchicken + 1) * 100:
			Global.coins -= (Global.numofchicken + 1) * 100
			Global.numofchicken += 1
			$menu/Label.text = str(Global.numofchicken) + "/4"
			$menu/buybotton.text = str((Global.numofchicken + 1) * 100)
			var Chicken = preload("res://scines/chicken.tscn")
			var chicken = Chicken.instance()
			chicken.position = Vector2(125,200)
			get_parent().add_child(chicken)
			
	if Global.numofchicken == 4:
		$chicken_sign.visible = false
		$menu.visible = false
