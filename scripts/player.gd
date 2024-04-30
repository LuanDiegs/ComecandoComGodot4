extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0

var gravidade = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):

	if not is_on_floor():
		velocity.y += gravidade * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("esquerda", "direita")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	#Animações
	if is_on_floor():
		if direction == 0:
			$AnimatedSprite2D.play("idle")
		else:
			$AnimatedSprite2D.play("run")
	else:
		$AnimatedSprite2D.play("pular")
	
	
		
	$AnimatedSprite2D.flip_h = direction < 0
	move_and_slide()
