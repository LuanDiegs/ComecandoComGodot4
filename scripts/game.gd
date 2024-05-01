extends Node2D

@onready var ui_jogador = %UIJogador

func _ready():
	ui_jogador.visible = true
	
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_R:
			get_tree().reload_current_scene()
