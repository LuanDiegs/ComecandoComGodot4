extends AudioStreamPlayer

const musicaNivel = preload("res://assets/music/time_for_adventure.mp3")
const efeitoSonoroMoeda = preload("res://assets/sounds/coin.wav")

func playSound(musica: AudioStream):
	stream = musica
	play()
	
func playMoedaSoundEffect():
	playSound(efeitoSonoroMoeda)
	bus = "EfeitosSonoros"
