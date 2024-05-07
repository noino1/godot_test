extends Character

@export var _physics:Node
@export var _controller:Node



func _ready() -> void:
	
	pass
	


func update_velocity():
	if not _physics:
		super()
	else :	
		velocity = _physics._velocity

func update_direction():
	_direction = _controller.direction
