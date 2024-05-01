extends HSlider

@export var faixaNome: String
var faixaIndex: int

func _ready():
	faixaIndex = AudioServer.get_bus_index(faixaNome)
	value_changed.connect(_on_value_changed)
	
	value = db_to_linear(AudioServer.get_bus_volume_db(faixaIndex))

func _on_value_changed(value: float):
	AudioServer.set_bus_volume_db(faixaIndex, linear_to_db(value))
