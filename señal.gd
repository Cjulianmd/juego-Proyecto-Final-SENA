extends Area2D

export(String,  FILE, "*.tscn") var next_level
signal Goal

func _ready():
	BG_Music.stop()
	
func _physics_process(delta):
	var Bodies = get_overlapping_bodies()
	for i in Bodies:
		if i.name == "Player":
			emit_signal("Goal")
			if !$anier.is_playing():
				BG_Music.stop()
				$anier.play()
				

func _on_anier_finished():
	get_tree().change_scene("res://videohacking.tscn")
