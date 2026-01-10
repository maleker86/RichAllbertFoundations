extends Node2D

@onready var plane: Sprite2D = $Plane
@onready var helicopter: Sprite2D = $Helicopter

var speed: float = 50.0


var _target: Vector2 = Vector2.ZERO


func _unhandled_input(event: InputEvent) -> void:
	_target = get_global_mouse_position()
	if event.is_action_pressed("SetTarget"):
		plane.look_at(_target)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#plane.global_position.y += 50.0 * delta
	#helicopter.global_position.x += 50.0 * delta;
	#plane.position = plane.position.move_toward(_target, 50.0 * delta)
	#plane.position += plane.transform.x.normalized() * speed * delta
	plane.move_local_x(speed * delta)
	pass
