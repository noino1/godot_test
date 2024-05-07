extends Node2D

func _ready() -> void:
	print("test2")
	connect("ready", Callable(self, "on_ready"))

func on_ready():
	print('11111111111')
	pass
func method1(args):
	print('')

	pass
