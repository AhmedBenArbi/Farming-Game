extends Node2D


func _ready():
	$AnimatedSprite.play("carrot_growing")
	$AnimationPlayer.play("blackgreentowhitegreen")
	$AnimationPlayer2.play("loding bar")
var percentage = 0


func _on_Timer_timeout():
	if percentage < 110:
		percentage += 10
	$Label.text = str(percentage) + "%"
	if percentage == 110:
		get_tree().change_scene("res://scines/world.tscn")

