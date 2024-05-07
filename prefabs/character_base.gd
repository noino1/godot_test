class_name Character
extends CharacterBody2D

@export var speed:float = 300.0


var _direction:Vector2

func _physics_process(delta: float) -> void:
	update_direction()
	update_velocity()
	move_and_slide()
	
func update_velocity():
	velocity = _direction * speed
	
func update_direction():
	pass
		
