extends CharacterBody2D

@export var speed = 300
@export var physics_component:Node 

var _direction:Vector2

func _physics_process(_delta: float) -> void:
	if physics_component:
		velocity = physics_component._velocity
	else :
		velocity = _direction * speed
		
	move_and_slide()
			
func _on_controller_direction_changed(direction: Vector2) -> void:
	_direction = direction
