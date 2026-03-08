extends StaticBody2D


func _ready():
	$sellmenu.visible = false

	
func _physics_process(delta):
	if Global.weather == "rain" or Global.night_time:
		$AnimatedSprite.visible = false
	else:
		$AnimatedSprite.visible = true


func _on_Area2D_body_entered(body):
	if body.has_method("player_sell_method") and Global.weather != "rain" and !Global.night_time:
		$sellmenu.visible = true






func _on_Area2D_body_exited(body):
	$sellmenu.visible = false
