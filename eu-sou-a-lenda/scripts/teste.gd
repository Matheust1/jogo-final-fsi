extends Node2D

var i = 1
var posIndo = 0
var posVoltando = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Olá, mundo!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(i);
	i += 1
	
	if (posIndo >= 500):
		position.x = posVoltando
		posVoltando -= 1
		
		if (posVoltando == 0):
			posIndo = 0
			posVoltando = 500
	else:
		position.x = posIndo
		posIndo += 1
	
	
