extends Camera2D

@export var tilemap: TileMap
@export var camPosition: Camera2D
# Called when the node enters the scene tree for the first time.
func _ready():
	var mapRect = tilemap.get_used_rect()
	var tileSize = tilemap.cell_quadrant_size
	var wordSizeInPixels = mapRect.size * tileSize
	limit_right = wordSizeInPixels.x
	limit_bottom = wordSizeInPixels.y
	limit_left = ((wordSizeInPixels.y) *-1)
	limit_top = ((wordSizeInPixels.x) *-1)
	
	var a = camPosition.position.x 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
