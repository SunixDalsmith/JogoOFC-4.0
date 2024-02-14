extends Camera2D


var collision_shape2d

func _ready():
	collision_shape2d = get_node("Area do mapa")
	var bounds = collision_shape2d.shape.get_rect()
	limit_left = (bounds.position.x) + collision_shape2d.global_position.x
	limit_right = (bounds.position.x + bounds.size.x) + collision_shape2d.global_position.x
	limit_top = (bounds.position.y) + collision_shape2d.global_position.y
	limit_bottom = (bounds.position.y + bounds.size.y) + collision_shape2d.global_position.y
	
	
	print("limit_left ", limit_left)
	print("limit_right ", limit_right)
	print("limit_top ", limit_top)
	print("limit_bottom ", limit_bottom)
	print("aaa",  collision_shape2d.global_position)
	
func _process(delta):
	pass
