extends StaticBody2D

var state = "day"


var change_state = false

var length_of_day = 60
var length_of_night = 25


func _on_Timer_timeout():
	if state == "day":
		state = "night"
		if Global.san_moon == "san":
			Global.san_moon = "moon"
			
			Global.night_time = true
	elif state == "night":
		state = "day"
		if Global.san_moon == "moon":
			Global.san_moon = "san"
			
		Global.night_time = false
		Global.numofday += 1
		
	change_state = true


func _process(delta):
	if change_state == true:
		change_state = false 
		if state == "day":
			change_to_day()
		elif state == "night":
			change_to_night()
			
func change_to_day():
	$AnimationPlayer.play("nighttoday")
	$Timer.wait_time = length_of_day
	$Timer.start()


func change_to_night():
	$AnimationPlayer.play("daytonight")
	$Timer.wait_time = length_of_night
	$Timer.start()

