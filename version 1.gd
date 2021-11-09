extends Area2D

export(String,  FILE, "*.tscn") var next_level
signal Goal

func _ready():
	BG_Music.stop()
	
func _physics_process(delta):
	pass
				

func _on_anier_finished():
	get_tree().change_scene("res://armado.tscn")
