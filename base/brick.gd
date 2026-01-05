extends Area2D
const REFLECT_X := Vector2(-1,1)
const REFLECT_Y := Vector2(1,-1)
signal destroy

func _on_body_entered(body) -> void:
	body.direction *= REFLECT_Y
	queue_free()
	destroy.emit()
	pass # Replace with function body.
