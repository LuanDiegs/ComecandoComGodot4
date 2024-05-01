extends Area2D

@onready var interfaceJogo = %UIJogador
@onready var audioStream = $AudioStreamPlayer2D
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	var player = body as CharacterBody2D
	interfaceJogo.adicionarPontuacao()
	if player != null and player.is_in_group("player"):
		audioStream.play(0.0)
		animation_player.play("pegarAnimacao")
