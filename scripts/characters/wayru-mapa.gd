extends CharacterBody2D


const velocidad = 50.0
@onready var player = $".."
@onready var animacion = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("arriba"):
		player.position.y -= velocidad * delta
		animacion.play("caminar-arriba")
		
	elif Input.is_action_pressed("izquierda"):
		player.position.x -= velocidad * delta
		animacion.play("caminar-izquierda")
		
	elif Input.is_action_pressed("abajo"):
		player.position.y += velocidad * delta
		animacion.play("caminar-abajo")
		
	elif Input.is_action_pressed("derecha"):
		player.position.x += velocidad * delta
		animacion.play("caminar-derecha")
		
	else:
		animacion.stop()
	move_and_slide()
