extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 100
var sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = $Sprite

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = sprite.rotation.normalized() * speed * delta
	position += velocity
	pass
