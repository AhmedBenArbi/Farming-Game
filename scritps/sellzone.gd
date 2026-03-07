extends StaticBody2D

func _process(delta):
	if Global.weather == "rain":
		$AnimatedSprite.visible = false
	if Global.weather == "none":
		$AnimatedSprite.visible = true

func _on_Area2D_body_entered(body):
	if body.has_method("player_sell_method") and Global.weather != "":
		var carrots = Global.numofcarrots
		var onions  = Global.numofonions
		var coins = Global.coins
		var berry = Global.numofberry
		coins += carrots * 5
		coins += onions * 8
		coins += berry * 10
		carrots = 0
		onions = 0
		berry = 0
		Global.coins = coins
		Global.numofcarrots = carrots
		Global.numofonions = onions
		Global.numofberry = berry
