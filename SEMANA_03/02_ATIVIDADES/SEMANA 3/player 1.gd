extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var vector_controle=Vector2.ZERO;
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	vector_controle.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	vector_controle.y = Input.get_action_strength("ui_down")- Input.get_action_strength("ui_up")
	
	move_and_slide(vector_controle*100)

  



func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Node2D.tscn")
