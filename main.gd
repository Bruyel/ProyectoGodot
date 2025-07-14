extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var m1 = Mascota.new()
	m1.nombre = "Firulais"
	
	var m2 = Mascota.new()
	m2.nombre = "Michi"
	m1.jugar()
	m1.jugar()
	m1.alimentar()
	
	m2.alimentar()
	m2.jugar()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
