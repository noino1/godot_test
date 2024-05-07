extends CharacterBody2D

signal chased(target_pos:Vector2)
@export var move_speed = 40

@onready var skin: Sprite2D = $Sprite2D

var _target_pos :Vector2

func _ready() -> void:
	chased.connect(update_target)

func _physics_process(delta: float) -> void:
	if is_arrived(3.0) == true:
		return
		
	var direction:Vector2 = get_direction()
	
	velocity =  direction * move_speed	
	move_and_slide()
	handle_anim()
	
func is_arrived(stop_radius: float):
	if _target_pos.distance_to(global_position) < stop_radius:
		return true
	return false
	
func get_direction():
	return (_target_pos - global_position).normalized()

func update_target(target_pos_:Vector2):
	_target_pos = target_pos_
	
func handle_anim():
	skin.flip_h = _target_pos.x - global_position.x > 0
	
