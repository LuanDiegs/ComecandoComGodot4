extends Control

	
func _ready():
	Musica.playMusica()
	
func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_opcoes_pressed():
	get_tree().change_scene_to_file("res://scenes/UI/menuOpcoes.tscn")

func _on_sair_pressed():
	get_tree().quit()
