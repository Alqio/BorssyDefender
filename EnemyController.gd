extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var enemyScene = preload("res://Enemy.tscn")
	
	var enemy1 = enemyScene.instance()
	enemy1.position = Vector2(64, 64)
	
	var enemy2 = enemyScene.instance()
	enemy2.position = Vector2(420, 80)
	
	add_child(enemy1)
	add_child(enemy2)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
