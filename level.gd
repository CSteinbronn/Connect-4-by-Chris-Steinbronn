extends Node2D

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_released("pause") and get_tree().paused:
		$CanvasLayer/pause.visible = true
		get_tree().paused = true
	elif Input.is_action_just_released("pause") and !get_tree().paused:
		get_tree().paused = false
		$CanvasLayer/pause.visible = false
