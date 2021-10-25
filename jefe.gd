extends KinematicBody2D

const MAX_SPEED : float = 100.0
const GRAVITY : float = 25.0

var motion := Vector2()



func _ready():
	$AnimationPlayer/Sprite.escale.x = -1
	motion.x = MAX_SPEED
	pass
	
	
	func _next_to_left_wall() -> bool:
		return $leftray
		r

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
