extends AnimatableBody2D

var caindo = false 
var existe = true
var gravidade = ProjectSettings.get_setting("physics/2d/default_gravity")
var velocidade = Vector2(0, 15)
var posicaoPadraoBloco = Vector2()
signal gerarNovoBloco

func _ready():
	posicaoPadraoBloco = position
	
func _process(delta):
	if caindo:
		velocidade.y += delta * gravidade
		position += velocidade * delta
		
	if position.y >= 500:
		print("oi")
		existe = false
		caindo = false
		velocidade.y = 0
		
func _on_area_2d_body_entered(body):
	var elemento = body as CharacterBody2D
	if(elemento != null and elemento.is_in_group("player") and !caindo):
		%AnimacoesBloco.play("cair")

func _on_animacoes_bloco_animation_finished(anim_name):
	if (anim_name == "cair"):
		caindo = true

func _on_tempo_respawn_timeout():
	if !existe and !caindo:
		print("ata")
		position = posicaoPadraoBloco
		existe = true
	
