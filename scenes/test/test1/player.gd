extends CharacterBody2D

@export var move_speed = 120
@onready var animation_player: AnimationPlayer = $AnimationPlayer

enum Toward {none, up, down, left, right}

var _cur_toward:Toward = Toward.down
var accel = move_speed / 0.3

func _physics_process(delta: float) -> void:
	var dir = get_dir_vector()
	#velocity = dir * move_speed
	velocity = velocity.move_toward(dir * move_speed, accel * delta)
	
	move_and_slide()
	handle_anim(dir)

func get_dir_vector():
	var dir = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	if dir.x > 0: # 右
		_cur_toward = Toward.right
	elif dir.x < 0: # 左
		_cur_toward = Toward.left
	elif dir.y > 0: # 下
		_cur_toward = Toward.down
	elif dir.y < 0: # 上
		_cur_toward = Toward.up
	return dir

func handle_anim(dir_:Vector2):
	var cur_toward_str:String = Toward.keys()[_cur_toward]
	print('cur_toward_str: ', cur_toward_str)
	var anim_str:String
	
	
	#if dir_.length() > 0 and !velocity.is_zero_approx():
		#anim_str = 'move_' + cur_toward_str
	if dir_.is_zero_approx() and velocity.is_zero_approx():
		anim_str = 'idle_' + cur_toward_str
	else :
		anim_str = 'move_' + cur_toward_str
		
	animation_player.play(anim_str)
	#print('anim_str:', anim_str)		




