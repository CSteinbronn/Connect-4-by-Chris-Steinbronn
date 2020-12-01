extends Node2D

onready var start_button = $start_button
onready var controls_button = $controls_button
func _ready():
	pass
	
func _process(delta):
	if start_button.pressed:
		get_tree().change_scene("res://game.tscn")
	if controls_button.pressed:
		get_tree().change_scene("res://controls.tscn")
	pass

