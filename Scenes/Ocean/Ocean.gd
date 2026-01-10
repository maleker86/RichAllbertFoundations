extends Node2D

@onready var plane: Sprite2D = $Plane
@onready var helicopter: Sprite2D = $Helicopter


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("SetTarget"):
		plane.look_at(get_global_mouse_position())


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#plane.global_position.y += 50.0 * delta
	helicopter.global_position.x += 50.0 * delta;
	
