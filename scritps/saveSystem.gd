extends Node

func save_game(data):
	var file = File.new()
	file.open("user://savegame.save",File.WRITE)
	file.store_string(to_json(data))
	file.close()
