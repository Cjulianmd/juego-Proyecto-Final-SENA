extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var niveles;
func _pressed() -> void:
	print("I'm clicked")
	print("Is Pressed: ", is_pressed())
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Inside Ready")
	print("Is Button Pressed: ", is_pressed())
	print("Is Button Desabled: ", is_disabled())# Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
