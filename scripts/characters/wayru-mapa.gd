extends CharacterBody2D

const VELOCIDAD = 50.0
@onready var animacion = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO  # Resetea la velocidad cada frame

	if Input.is_action_pressed("arriba"):
		velocity.y = -VELOCIDAD
		animacion.play("caminar-arriba")
	elif Input.is_action_pressed("abajo"):
		velocity.y = VELOCIDAD
		animacion.play("caminar-abajo")
	elif Input.is_action_pressed("izquierda"):
		velocity.x = -VELOCIDAD
		animacion.play("caminar-izquierda")
	elif Input.is_action_pressed("derecha"):
		velocity.x = VELOCIDAD
		animacion.play("caminar-derecha")
	else:
		animacion.stop()

	move_and_slide()
