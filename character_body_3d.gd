extends CharacterBody3D
const MOUSE_SENSITIVITY =0.16

@onready var camera: Camera3D = $Camera3D

var pitch := 0.0
var yaw := 0.0

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		#rotation.y -= deg_to_rad(event.relative.x * MOUSE_SENSITIVITY)
		pitch -= event.relative.y * MOUSE_SENSITIVITY
		pitch = clamp(pitch, -45, 45)
		camera.rotation_degrees.x = pitch
		
		#rotation.x -= deg_to_rad(event.relative.y * MOUSE_SENSITIVITY)
		yaw -= event.relative.x * MOUSE_SENSITIVITY
		yaw = clamp(yaw, -55, 55)
		camera.rotation_degrees.y = yaw
