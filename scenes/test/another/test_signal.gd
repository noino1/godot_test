extends Node2D

signal  blocked

@onready var btn_1: Button = $btn1

var pos:Vector2:
	set(val):
		pos = val
		print('val:', val)

func _ready() -> void:
	pass

func ff1(dir: util.Direction):
	print('dir: ', dir)
	print('dir_str: ',util.Direction.keys()[dir])

func _on_blocked() -> void:
	pass # Replace with function body.
