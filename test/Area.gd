extends Node2D

var cookie = preload("res://cookie.tscn")

func _ready():
  Global.node_creation_parent = self

	
	
func _exit_tree():
	Global.node_creation_parent = null
	


func _on_cookie_spawn_timer_timeout():
	var cookie_position =  Vector2(rand_range(-160,670),rand_range(-90, 390))
	
	while cookie_position.x < 640 and cookie_position.x > -80 or cookie_position.y < 360 and cookie_position.y > -45:
		cookie_position =  Vector2(rand_range(-160,670),rand_range(-90, 390))
		
		
	Global.instance_node(cookie, cookie_position, self)
