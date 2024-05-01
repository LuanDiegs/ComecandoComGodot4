extends Control

func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://scenes/UI/menuInicial.tscn")

#Exemplo de como tocar vários sons ao mesmo tempo (Criando filhos de audioStream)
func tocarSom(som):
	var audioStreamNovo = preload("res://scenes/Audio/musica.tscn").instantiate() as AudioStreamPlayer
	get_tree().root.get_children()[0].add_child(audioStreamNovo)
	audioStreamNovo.stream = som
	audioStreamNovo.bus = "EfeitosSonoros"
	audioStreamNovo.play()

func _on_sfx_drag_ended(value_changed):
	EfeitosSonoros.playMoedaSoundEffect()
	#Ruim
	#tocarSom(preload("res://assets/sounds/coin.wav"))
