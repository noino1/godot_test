extends Node

## 一个提供方向的component,向信号订阅者发送方向数据

signal direction_changed(direction: Vector2)

var direction:Vector2:
	set(new_dir):
		direction = new_dir
		emit_signal('direction_changed', direction)

func _physics_process(delta: float) -> void:
	get_input()

func get_input():
	direction = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
