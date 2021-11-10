extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_slide_collision(get_slide_count()-1) !=null):
		var obj_col = get_slide_collision(get_slide_count()-1).collider
		if(obj_col.is_in_group("player")):
			get_tree().change_scene("res://Level_1.tscn")


func _on_Timer_timeout():
	queue_free() # Replace with function body.
