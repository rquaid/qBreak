extends Sprite2D
var velocity := Vector2(0,0)
var speed_scalar := 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity.x = randf() - 0.5
	velocity.y = randf() * -1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$".".position += velocity * delta * speed_scalar
	pass
