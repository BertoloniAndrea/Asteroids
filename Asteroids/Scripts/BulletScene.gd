extends Area2D
class_name Bullet

export var linear_velocity := 1000.0
var vertical_movement := Vector2(0, 1)

func _ready():
	pass
 
func _process(delta):
	position += (vertical_movement * linear_velocity * delta).rotated(rotation)
	
func set_rotation(player_rotation):
	rotation = player_rotation
	
func set_position(player_position):
	position = player_position
	
func set_velocity(player_velocity):
	linear_velocity += player_velocity


func _on_screen_exited():
	pass
#	call_deferred("queue_free")
	


func _on_timeout():
	call_deferred("queue_free")

