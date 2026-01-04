extends Node2D
const REFLECT_X := Vector2(-1,1)
const REFLECT_Y := Vector2(1,-1)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_left_wall_body_entered(body: Node2D) -> void:
	body.direction *= REFLECT_X
	pass # Replace with function body.


func _on_top_wall_body_entered(body: Node2D) -> void:
	body.direction *= REFLECT_Y
	pass # Replace with function body.


func _on_right_wall_body_entered(body: Node2D) -> void:
	body.direction *= REFLECT_X
	pass # Replace with function body.
