extends Area2D


const SPEED = 300.0
const REFLECT_X := Vector2(-1,1)
const REFLECT_Y := Vector2(1,-1)
var paddle_width := 200


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(Input.is_action_pressed("ui_left")):
		$".".position.x -= SPEED * delta
	if(Input.is_action_pressed("ui_right")):
		$".".position.x += SPEED * delta
	pass

func _on_body_entered(body) -> void:
	body.direction.x = (body.position.x - position.x) / (paddle_width / 2)
	body.direction *= REFLECT_Y
	pass # Replace with function body.
