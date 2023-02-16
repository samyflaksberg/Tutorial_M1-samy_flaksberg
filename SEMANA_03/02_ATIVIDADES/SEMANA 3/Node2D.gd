extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var lista = ["Samy", "Felipe","Flaksberg"]

# Called when the node enters the scene tree for the first time.


	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func Texto():
	pass
	

func _on_Button_pressed():
	$Label.text = str (lista[0]) + "\n" + str (lista[1]) + "\n" + str (lista[2]) 
	
	


func _on_Button2_pressed():
	$Label.text += "\n" + $LineEdit.text

	


func _on_Button3_pressed():
	$Label.text = str("Vem ser inteli")


func _on_Button4_pressed():
	$Label.text = $LineEdit.text
