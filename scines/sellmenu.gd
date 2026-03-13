extends StaticBody2D

var item4price = 50
var item1price = 10
var item2price = 20
var item3price = 30
var item = 1
var price

func _ready():
	$icon.play("carrot")
	item = 1
	$sell_label.text = ("Sell One  " + str(item1price))
	$sellall_label.text = ("Sell all  " + str(item1price * Global.numofcarrots))
func _physics_process(delta):
	if self.visible == true:
		if item == 1:
			$icon.play("carrot")
			$sell_label.text = ("Sell One  " + str(item1price))
			$sellall_label.text = ("Sell All  " + str(item1price * Global.numofcarrots))
			if Global.numofcarrots > 0:
				 $sellbotton.modulate = "b24fc642"
				 $sellallbotton.modulate = "b24fc642"
			else:
				$sellbotton.modulate = "b2c64242"
				$sellallbotton.modulate = "b2c64242"
		if item == 2:
			$icon.play("onion")
			$sell_label.text = ("Sell One  " + str(item2price))
			$sellall_label.text = ("Sell All  " + str(item2price * Global.numofonions))
			if Global.numofonions > 0:
				 $sellbotton.modulate = "b24fc642"
				 $sellallbotton.modulate = "b24fc642"
			else:
				$sellbotton.modulate = "b2c64242"
				$sellallbotton.modulate = "b2c64242"
		if item == 3:
			$icon.play("berry")
			$sell_label.text = ("Sell One  " + str(item3price))
			$sellall_label.text = ("Sell All  " + str(item3price * Global.numofberry))
			if Global.numofberry > 0:
				 $sellbotton.modulate = "b24fc642"
				 $sellallbotton.modulate = "b24fc642"
			else:
				$sellbotton.modulate = "b2c64242"
				$sellallbotton.modulate = "b2c64242"
		if item == 4:
			$icon.play("egg")
			$sell_label.text = ("Sell One  " + str(item4price))
			$sellall_label.text = ("Sell All  " + str(item4price * Global.numofegg))
			if Global.numofegg > 0:
				 $sellbotton.modulate = "b24fc642"
				 $sellallbotton.modulate = "b24fc642"
			else:
				$sellbotton.modulate = "b2c64242"
				$sellallbotton.modulate = "b2c64242"


func _on_Buttonleft_pressed():
	swap_item_back()


func _on_Buttonright_pressed():
	swap_item_forward()







func swap_item_back():
	if item == 4:
		item  = 3
		$icon.play("onion")

	elif item == 3:
		$icon.play("carrot")
		item = 2

	elif item == 2:
		$icon.play("berry")
		item = 1
	elif item == 1:
		$icon.play("egg")
		item = 4
func swap_item_forward():
	if item == 1:
		item  = 2
		$icon.play("onion")
	elif item == 2:
		$icon.play("berry")
		item = 3
	elif item == 3:
		$icon.play("carrot")
		item = 4
	elif item == 4:
		$icon.play("egg")
		item = 1





func _on_sellbotton_pressed():
	if item == 1:
		if Global.numofcarrots > 0:
			Global.coins += item1price
			Global.numofcarrots -= 1
	if item == 2:
		if Global.numofonions > 0:
			Global.coins += item2price
			Global.numofonions -= 1
	if item == 3:
		if Global.numofberry > 0:
			Global.coins += item3price
			Global.numofberry -= 1
	if item == 4:
		if Global.numofegg > 0:
			Global.coins += item4price
			Global.numofegg -= 1 


func _on_sellallbotton_pressed():
		if item == 1:
			if Global.numofcarrots > 0:
				Global.coins += item1price * Global.numofcarrots
				Global.numofcarrots = 0
		if item == 2:
			if Global.numofonions > 0:
				Global.coins += item2price * Global.numofonions
				Global.numofonions = 0
		if item == 3:
			if Global.numofberry > 0:
				Global.coins += item3price * Global.numofberry
				Global.numofberry = 0
		if item == 4:
			if Global.numofegg > 0:
				Global.coins += item4price * Global.numofegg
				Global.numofegg = 0
