extends Area2D

export var speed = 20

var dir = 270

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2(0, 1).normalized() * speed * delta
