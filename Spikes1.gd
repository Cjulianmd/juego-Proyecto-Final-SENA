extends RigidBody2D
signal Hit
const WALK_SPEED = 50
func _physics_process(delta):
	var Bodies = get_overlapping_bodies()
	for i in Bodies:
		if i.name == "Player":
			emit_signal("Hit")
			
export var cycle = 2.0
export var motion := Vector2()
func _on_Spikes_Hit():
	$Timer.start()
	$CollisionShape2D.disabled = true

func _on_Timer_timeout():
	$CollisionShape2D.disabled = false
