extends Node2D

var teste = false
var valor = 0
var numero = 0 #nao pode ter acento
var lista = [] #precisa colocar var para declara alguma coisa
var nome # criar uma var
var cont #criar uma var

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	nome = $LineEdit.text
	numero = int($LineEdit2.text) #nao pode ter acento e precisa de $
	$Label.text = nome


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i # nao pode ter vogal
		lista.append(numero) #nao pode ter vogal
	$Label.text = str(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var i = 0 # Mover I para antes de seu uso
	while(i < len(lista)):
		# cont=0 # Variável inútil
		if(lista[i] % 2 == 1):
			#cont +=1 # Desnecessário
			#if(i!=0): # Desnecessário
			nome = nome+"baldo"
			$Label.text = nome
			break # Encerrar código para só adicionar baldo 1 vez
		i += 1 # Incrmeentar I pra não fazer loop infinito
