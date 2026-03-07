extends StaticBody2D

func _ready():
	$AnimatedSprite.play("close")
	$doorcol.disabled = true


func _on_Area2D_body_entered(body):
	if body.has_method("player_open_close_method"):
		$doorcol.disabled = false
		$AnimatedSprite.play("open")


func _on_Timer_timeout():
	$AnimatedSprite.play("close")
	$doorcol.disabled = true
	$Timer.wait_time = 5
	$Timer.start()
