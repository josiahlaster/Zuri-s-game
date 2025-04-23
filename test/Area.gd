extends Node2D

var ground = preload("res://ground.tscn")
var cookie = preload("res://cookie.tscn")
#var ground = preload("res://ground.tscn")


func _ready():
	Global.node_creation_parent = self
	

	
	
func _exit_tree():
	Global.node_creation_parent = null
	


func _on_cookie_spawn_timer_timeout():
	var cookie_position =  Vector2(rand_range(60,600),rand_range(0, 0))
	
	while cookie_position.x < 200 and cookie_position.x > -80 and cookie_position.y < 0 and cookie_position.y > 0:
		cookie_position =  Vector2(rand_range(3,600),rand_range(0, 0))
		
		
	Global.instance_node(cookie, cookie_position,self)
