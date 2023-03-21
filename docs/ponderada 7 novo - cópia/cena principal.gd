extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var teste = false
var valor = 0
var numero = 0 
var lista = [] 
var nome 
var cont 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Button_pressed():
	nome = $LineEdit.text
	numero = int($LineEdit.text) 
	$Label.text = nome


func _on_Button2_pressed():
	for i in range(10):
		numero+=i 
		lista.append(numero) 
	$Label.text = str(numero)

