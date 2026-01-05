extends Node2D
const REFLECT_X := Vector2(-1,1)
const REFLECT_Y := Vector2(1,-1)
var num_bricks := 8

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
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


func _on_bottom_wall_body_entered(body: Node2D) -> void:
	$CanvasLayer/ShadowBox.visible = true
	$CanvasLayer/GameOverLoseLabel.visible = true
	pass # Replace with function body.


func _on_brick_destroy() -> void:
	num_bricks -= 1
	if(num_bricks == 0):
		$CanvasLayer/ShadowBox.visible = true
		$CanvasLayer/GameOverWinLabel.visible = true
	pass # Replace with function body.
