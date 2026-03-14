extends Node2D

var selected = false
var seed_type = 3
var plant = false

func _ready():
	$Button.visible = true
	$Label.visible = true

func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)

func _input(event):
	if event is InputEventMouseButton and !plant:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			selected = false


func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click") and !plant:
		Global.plantselected = seed_type
		selected = true
	pass # Replace with function body.


func _on_Button_pressed():
	$Button.visible = false
	$Label.visible = false
	$ColorRect.visible = false
	plant = true
	pass # Replace with function body.
