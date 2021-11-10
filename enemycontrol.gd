extends KinematicBody2D
const MAX_SPEED : float = 100.0
const GRAVITY : float = 25.0
signal Hit
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var motion := Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.scale.x = -1
	motion.x = MAX_SPEED
	pass # Replace with function body.
func _next_to_left_wall() -> bool :
	return $LeftRay.is_colliding()
	
func _next_to_right_wall() -> bool :
	return $Rightray.is_colliding()
	
func _floor_detection() -> bool :
	return $AnimatedSprite/FloorDetection.is_colliding()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _flip():
	if _next_to_right_wall() or _next_to_left_wall() or !_floor_detection():
			motion.x *= -1
			$AnimatedSprite.scale.x *= -1
			
func _process(delta):
	motion.y += GRAVITY
	_flip()
	
	
	motion = move_and_slide(motion)
	
	if(get_slide_collision(get_slide_count()-1) !=null):
		var obj_col = get_slide_collision(get_slide_count()-1).collider
		if(obj_col.is_in_group("player")):
			get_tree().change_scene("res://Level_1.tscn")

