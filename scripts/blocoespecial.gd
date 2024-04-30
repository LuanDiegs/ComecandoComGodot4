extends StaticBody2D


@onready var hitbox = $Hitbox
@onready var animationPlayer = $AnimationPlayer

func _on_hitbox_body_entered(body):
	animationPlayer.play("tirarMoeda")
	var novaMoeda = preload("res://scenes/moeda.tscn").instantiate()
	novaMoeda.global_position = %MoedaSpawn.global_position
	%MoedaSpawn.add_child(novaMoeda)
