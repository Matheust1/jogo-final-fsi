extends Node2D

var i = 1
var vel = 200
var direction = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Olá, mundo!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(i);
	i += 1
	
	position.x += (vel * delta * direction)
	
	if (position.x >= 400):
		direction = -1
	
	elif (position.x <= 0):
		direction = 1
