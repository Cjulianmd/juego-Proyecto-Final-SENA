extends Area2D
signal Energy
var P = position.y 
var PL = P-10 
var Up = true 
func _ready():
	P = position.y
	PL = P-10

func _process(delta):
	if position.y == PL:
		Up = false
	if position.y == P:
		Up = true
	
	if Up:
		position.y -= 1
	else:
		position.y += 1
		
func _physics_process(delta):
	var Bodies = get_overlapping_bodies()
	for i in Bodies:
		if i.name == "Player":
			emit_signal("Energy")
			queue_free()
