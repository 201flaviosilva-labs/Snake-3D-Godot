extends Node2D

var score: int = 0

onready var foodScene: PackedScene = preload("res://Food/Apple.tscn")

func _on_Player_food_eated(new_body, position: Vector2) -> void:
	score += 1
	$Score.text = str(score)
	$BodyPartsContainer.call_deferred("add_child", new_body)
	new_body.global_position = position


func _on_NewFood_timeout() -> void:
	var new_food = foodScene.instance()
	$FoodContainer.call_deferred("add_child", new_food)
	pass
