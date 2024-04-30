extends Area2D

@onready var interfaceJogo = %InterfaceJogo
@onready var audioStream = $AudioStreamPlayer2D

func _on_body_entered(body):
	var player = body as CharacterBody2D
	interfaceJogo.adicionarPontuacao()
	if player != null and player.is_in_group("player"):
		audioStream.play(0.0)
		queue_free()
