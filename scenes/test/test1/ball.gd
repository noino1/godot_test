extends Sprite2D

@export var target:Node2D
const MAX_RADIUS = 100

func _ready() -> void:
	var tween = create_tween().set_loops()
	tween.tween_method(tween_method, 0.0, TAU, 5)

func tween_method(a):
	var cur_direction = Vector2.RIGHT.rotated( a )
	#global_position = target.global_position + (cur_direction * MAX_RADIUS)
	global_position = target.global_position + (cur_direction * MAX_RADIUS)
