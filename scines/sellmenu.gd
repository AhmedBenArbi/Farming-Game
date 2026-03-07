extends StaticBody2D

var item1price = 10
var item2price = 20

var price

func _ready():
	$icon.play("onion")
	item = 1

func _physics_process(delta):
	if self.visible == true:
		if item == 1:
			$icon.play("berryseed")
			$pricelabel.text = "100"
			if Global.coins >= item1price:
				if item1owned == false:
					 $buybottoncolor.color = "b24fc642"
				else:
					$buybottoncolor.color = "b2c64242"
			else:
				$buybottoncolor.color = "b2c64242"
	if item == 2:
			$icon.play("randomseed")
			$pricelabel.text = "250"
			if Global.coins >= item2price:
				if item2owned == false:
					 $buybottoncolor.color = "b24fc642"
				else:
						$buybottoncolor.color = "b2c64242"
			else:
					$buybottoncolor.color = "b2c64242"




func _on_Buttonleft_pressed():



func _on_Buttonright_pressed():



func _on_buybotton_pressed():

