extends Node2D
onready var player_1 = get_node("player_1")
onready var player_2_scene = preload("player_2.tscn")
onready var player_1_scene = preload("player_1.tscn")
func _ready():

	pass


func _process(delta):

	pass 

func _spawn_player_2(pos):
	var player_2 = player_2_scene.instance()
	add_child(player_2)
	player_2.position = pos
	print(player_2.global_position)
	pass
func _spawn_player_1(pos):
	var player_1 = player_1_scene.instance()
	add_child(player_1)
	player_1.position = pos
	print(player_1.global_position)
	pass

func _on_player_change_body_entered(body):
	if body.is_in_group("player_1"):
		_spawn_player_2(Vector2(521,98))
	if body.is_in_group("player_2"):
		_spawn_player_1(Vector2(521,90))
		pass



func _on_Area2D_body_entered(body):
	if body.is_in_group("player_1"):
		Input.is_action_pressed("ui_left") == false
	
	pass 

