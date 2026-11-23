extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@export var velocidade = 200

func _physics_process(delta: float) -> void:
	if (Input.is_action_just_pressed("baixo")):
		velocity.y = velocidade
	elif (Input.is_action_just_pressed("cima")):
		velocity.y = -velocidade
	elif (Input.is_action_just_pressed("direita")):
		velocity.x = velocidade
	elif (Input.is_action_just_pressed("esquerda")):
		velocity.x = -velocidade

	move_and_slide()
