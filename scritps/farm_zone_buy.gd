extends StaticBody2D

var price = 300


func _ready():
	$ColorRect.visible = true
	$Button.visible = true
	$CollisionShape2D.disabled = false

func _on_Button_pressed():
	if Global.coins >= price:
		$ColorRect.visible = false
		$Button.visible = false
		$CollisionShape2D.disabled = true


