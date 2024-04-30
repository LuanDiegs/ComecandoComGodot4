extends Node

var pontuacao = 0
@onready var pontuacaoLabel = $Pontuacao

func adicionarPontuacao():
	pontuacao += 1
	pontuacaoLabel.text = "Você pegou " + str(pontuacao) + " moedas!"
	print(pontuacao)
