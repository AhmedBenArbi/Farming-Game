extends Node2D

var current_weather = "none"

const camera_pos1x = 210
const camera_pos1y = 140

const camera_pos2x = -218
const camera_pos2y = 140

const camera_pos3x = 644
const camera_pos3y = 140

func _ready():
	if current_weather == "none":
		$AudioStreamPlayer.play()
	if current_weather == "rain":
		$AudioStreamPlayer.stop()
		
func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		SaveSystem.save_game({"coins":Global.coins,"numofcarrots":Global.numofcarrots})
		get_tree().quit()
	
func _physics_process(delta):
	if(Global.numofonions > 0):
		$Camera2D/oniontext.visible = true
		$Camera2D/onionicon.visible = true
	elif(Global.numofonions == 0):
		$Camera2D/oniontext.visible = false
		$Camera2D/onionicon.visible = false
	if(Global.numofcarrots > 0):
		$Camera2D/carrottext.visible = true
		$Camera2D/carroticon.visible = true
	elif(Global.numofcarrots == 0):
		$Camera2D/carrottext.visible = false
		$Camera2D/carroticon.visible = false
	if(Global.numofberry > 0):
		$Camera2D/berrytext.visible = true
		$Camera2D/berryicon.visible = true
	elif(Global.numofberry == 0):
		$Camera2D/berrytext.visible = false
		$Camera2D/berryicon.visible = false
	$Camera2D/oniontext.text =  str(Global.numofonions)
	$Camera2D/carrottext.text = str(Global.numofcarrots)
	$Camera2D/berrytext.text =  str(Global.numofberry)
	$Camera2D/coinstext.text = str(Global.coins)
	$Camera2D/numoofday.text = str(Global.numofday)
	
	if Global.camera_pos == 1:
		$Camera2D.position.x = camera_pos1x
		$Camera2D.position.y = camera_pos1y
	elif Global.camera_pos == 2:
		$Camera2D.position.x = camera_pos2x
		$Camera2D.position.y = camera_pos2y
	elif Global.camera_pos == 3:
		$Camera2D.position.x = camera_pos3x
		$Camera2D.position.y = camera_pos3y
	if Global.night_time:
		$Camera2D/sun_moon.play("moon")
	else:
		$Camera2D/sun_moon.play("sun")
func _on_Timer_timeout():
	if current_weather == "none":
		current_weather = "rain"
		$Timer.wait_time = rand_range(20,30)
		$Timer.start()
	elif current_weather == "rain":
		current_weather = "none"
		$Timer.wait_time = rand_range(20,30)
		$Timer.start()



func _on_openfarmingzone_body_entered(body):
	if body.has_method("player"):
		pass



