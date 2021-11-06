extends VideoPlayer




func _on_VideoPlayer_finished():
	get_tree().change_scene("res://Level_3.tscn")
