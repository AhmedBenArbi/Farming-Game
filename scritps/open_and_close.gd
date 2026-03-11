extends StaticBody2D

func _ready():
	$AnimatedSprite.play("close")
	$doorcol.disabled = false



var player_insde_area = false
func _on_Area2D_body_entered(body):
		player_insde_area = true
		
		
		
func _physics_process(delta):
	
	if Input.is_action_just_pressed("open") and player_insde_area:
		$doorcol.disabled = true
		$AnimatedSprite.play("open")
	if Input.is_action_just_pressed("close") and player_insde_area:
			$doorcol.disabled = false
			$AnimatedSprite.play("close")





