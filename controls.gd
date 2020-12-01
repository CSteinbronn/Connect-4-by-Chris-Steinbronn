extends Node2D
onready var back_button = $back_button
func _ready():
	pass
func _process(delta):
	if back_button.pressed:
		get_tree().change_scene("res://title_screen.tscn")
	pass
