extends Node2D

@export var moveSpeed: int
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var direction = 1

func _process(delta: float) -> void:
	if not ray_cast_right.is_colliding(): 
		animated_sprite_2d.flip_h = true
		direction = -1
	if not ray_cast_left.is_colliding(): 
		animated_sprite_2d.flip_h = false
		direction = 1
	position.x += delta * moveSpeed * direction
