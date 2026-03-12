extends Node

var coins = 0
var numofcarrots = 0
var numofonions = 0
var numofberry = 0
var numofday = 0
var farming_zone_owned = false
var plantselected = 1
var night_time = false

func _ready():
	var file = File.new()
	if file.file_exists("user://savegame.save"):
		file.open("user://savegame.save", File.READ)
		var data = parse_json(file.get_as_text())
		coins = data["coins"]
		numofcarrots = data["numofcarrots"]
		file.close()



var numofapple = 0
var san_moon = "san"
var weather
var camera_pos
var current_cutscene
var current_cutscene2
var newfarmingzone_activate = false
var newfarmingzone_activate2 = false
