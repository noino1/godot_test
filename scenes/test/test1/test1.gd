extends Node2D


var speed = 111
var dir:Dictionary = {}

func _ready() -> void:
	prints(has_method("hurt"), has_method("hit"))

	print(get_node_or_null(^'child_3/child_2'))
	#print(get_child(0), get_child(-1))
	
func hurt():
	pass
	
