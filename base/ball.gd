extends CharacterBody2D
#var velocity = 
var speed = 250.0
var direction = Vector2(randf() - 0.5,-1)
var num_bricks = 8

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = direction * speed
	move_and_slide()
	pass
