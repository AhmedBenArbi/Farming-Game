extends StaticBody2D

func _ready():
	$AnimatedSprite.play("close")
	$doorcol.disabled = false

var player_insde_area = false
var door_is_closed = true 
func _on_Area2D_body_entered(body):
		player_insde_area = true



func _physics_process(delta):
	if Input.is_action_just_pressed("open") and (player_insde_area and door_is_closed):
		$doorcol.disabled = true
		$AnimatedSprite.play("open")
		door_is_closed = false
	elif Input.is_action_just_pressed("open") and (player_insde_area and !door_is_closed):
		$doorcol.disabled = false
		$AnimatedSprite.play("close")
		door_is_closed = true
	

func _on_Area2D_body_exited(body):
	player_insde_area = false
	pass # Replace with function body.
