## 各种通用的函数
class_name util

enum Direction{NONE, LEFT, RIGHT, UP, DOWN}
enum Corner{top_left, top_right, bottom_right, bottom_left}
enum Toward {NONE, UP, DOWN, LEFT, RIGHT}

static func get_game_wnd_size() -> Vector2:
	var width = ProjectSettings.get_setting('display/window/size/viewport_width')
	var height = ProjectSettings.get_setting('display/window/size/viewport_height')
	return Vector2(width, height)

static func get_rnd_pos_in_game_wnd() -> Vector2:
	return Vector2(randf_range(0, get_game_wnd_size().x),
			randf_range(0, get_game_wnd_size().y))

static func get_center_pos_in_game_wnd() -> Vector2:
	return get_game_wnd_size() / 2
	
static func get_rect_corner(rect:Rect2) -> Dictionary:
	var top_right:Vector2 = rect.position + Vector2(rect.size.x, 0)
	var bottom_right:Vector2 = rect.end
	var bottom_left:Vector2 = rect.position + Vector2(0, rect.size.y)
	var corner_info = {'top_left': rect.position, 'top_right':top_right,
	'bottom_right':bottom_right, 'bottom_left':bottom_left} 
	return corner_info
	
static func get_rand_direction() -> Vector2:
	var rnd_x = randf_range(-1,1)
	var rnd_y = randf_range(-1,1)
	return Vector2(rnd_x, rnd_y).normalized()

