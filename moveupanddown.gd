extends AnimatedSprite3D
@export var movementAmount: float
@export var movementSteps: int
var i


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	i = 0
	play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	translate(Vector3(0, movementAmount, 0))
	i += 1
	if i == movementSteps:
		i = 0
		movementAmount *= -1
	pass # Replace with function body.
