extends KinematicBody2D

var speed = 25
var cookie = "res://cookie.tscn"
var velocity = Vector2()
var hp = 1

func _process(delta):
	if Global.Keith !=null:
		velocity = global_position.direction_to(Global.Keith.global_position)
	
	global_position += velocity * speed * delta	
	
	if hp <= 0:
		Global.points += 10
		queue_free()

func _on_Hitbox_area_entered(area):
	if area.is_in_group("Cookie_collider"):
		#modulate = Color.white
		hp -= 1
		area.get_parent().get_parent().queue_free()
	
