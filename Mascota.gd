extends Node
class_name Mascota

var nombre : String

var energia : int = 100
var estadoActual: String
var esta_dormido : bool = false

#DETERMINA EL ESTADO ACTUAL DE LA MASCOTA
#func define_estado():

func alimentar():
	estadoActual = "comiendo"
	if esta_dormido ==  true:
		despertar()
		
	 
	energia = min(energia + 10, 100)
	print ("%s está comiendo. Energia %d" % [nombre, energia])
	
func jugar():
	estadoActual = "jugando"
	if esta_dormido == true:
		print("%s está dormido, tiene %d, no quiere jugar" % [nombre, energia])
		return
	energia -= 15
	print("%s ha jugado. Energía: %d" % [nombre, energia])
	if energia <= 0:
		dormir()
		print("%s está muy cansado, tiene %d de energía por lo que se irá a dormir" % [nombre, energia])

func dormir():
	estadoActual = "durmiendo"
	esta_dormido = true	
	print("%s está dormido zzzZZZ..." % nombre)
	
func despertar():
	estadoActual = "despertando"
	esta_dormido = false
	print("%s está despierto YEIII!" % nombre)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	estadoActual = "despertando"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	get_node("Estado").text = estadoActual
