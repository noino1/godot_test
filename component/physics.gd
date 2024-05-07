extends Node
## 对velocity施加物理效果的component

@export var _args:PhysicsData

var _direction:Vector2
var _velocity:Vector2

func _ready() -> void:
	if _args==null:
		set_physics_process(false)
		printerr('PhysicsData is null')

func _physics_process(delta: float) -> void:
	accel()
	friction()
	
func accel():
	_velocity += _direction * _args.accel
	_velocity = _velocity.limit_length(_args.max_speed)
	
func friction():
	_velocity = lerp(_velocity, Vector2.ZERO, _args.friction)

func _on_controller_direction_changed(direction: Vector2) -> void:
	_direction = direction
