extends TouchScreenButton
var pausa = Input.is_action_pressed("pausa")

func _input(event):
	if event.is_action_pressed("pausa"):get_tree().paused = !get_tree().paused


func _on_pausa_pressed():
	get_tree().change_scene("res://pausa.tscn")

func _on_Escape_pressed():
	get_tree().change_scene("res://pausa.tscn")
