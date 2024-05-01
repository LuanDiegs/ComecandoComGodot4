extends Control

@onready var pontuacao_moedas_label = %PontuacaoMoedasLabel
var pontuacao = 0
	
func adicionarPontuacao():
	pontuacao += 1
	pontuacao_moedas_label.text = str(pontuacao)
	
func habilitarUI():
	visible = true
	
