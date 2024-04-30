extends Area2D

@onready var timer = $Timer
var gravidade = ProjectSettings.get_setting("physics/2d/default_gravity")
		
func _on_body_entered(body):
	var player = body as CharacterBody2D
	Engine.time_scale = 0.5
	player.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
