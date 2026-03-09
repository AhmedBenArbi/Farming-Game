extends KinematicBody2D

var speed = 100
var motion =  Vector2.ZERO

func _ready():
	add_to_group("player")

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		$AnimatedSprite.play("sidewalk")
		$AnimatedSprite.flip_h = true
		motion.x  = speed
		motion.y = 0
	elif Input.is_action_pressed("left"):
		$AnimatedSprite.play("sidewalk")
		$AnimatedSprite.flip_h = false
		motion.x = -speed
		motion.y = 0
	elif Input.is_action_pressed("down"):
		$AnimatedSprite.play("downwalk")
		motion.y = speed
		motion.x = 0
	elif Input.is_action_pressed("up"):
		$AnimatedSprite.play("upwalk")
		motion.y = -speed
		motion.x = 0
	else:
		$AnimatedSprite.play("idle")
		motion.x = 0
		motion.y = 0
	
	if self.position.x <= 20:
		Global.camera_pos = 2
	elif self.position.x >= 400:
		Global.camera_pos = 3
	else:
		Global.camera_pos = 1


	move_and_slide(motion)

func _buyfarm():
	pass

func _player():
	pass

func player_sell_method():
	pass

func player_shop_method():
	pass

func player_open_close_method():
	pass
