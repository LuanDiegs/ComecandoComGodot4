extends Node2D

const velocidade = 60 

var direcao = 1
@onready var ray_cast_esquerda = $RayCastEsquerda
@onready var ray_cast_direita = $RayCastDireita
@onready var ray_cast_diagonal_direita = $RayCastDiagonalDireita
@onready var ray_cast_diagonal_esquerda = $RayCastDiagonalEsquerda

func _process(delta):
	if ray_cast_direita.is_colliding() or !ray_cast_direita.is_colliding() and !ray_cast_diagonal_direita.is_colliding():
		direcao = -1
	
	if ray_cast_esquerda.is_colliding() or !ray_cast_esquerda.is_colliding() and !ray_cast_diagonal_esquerda.is_colliding():
		direcao = 1
		
	$AnimatedSprite2D.flip_h = direcao != 1
	position.x += direcao * velocidade * delta
