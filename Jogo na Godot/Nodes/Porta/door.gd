extends StaticBody2D

@onready var animation = $AnimationDoor #importar a animacao da porta
var estate = "open" #fechar ou abrir a porta
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_E: #se a tecla e for precionada
			if estate == "open": #abre
				animation.play("Open_Door")
				estate = "close"
			elif estate == "close": #fecha
				animation.play("Close_Door")
				estate = "open"
				

func process(delta):
	_input(0)
	

