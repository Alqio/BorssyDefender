extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var sprite
var projectileScene

func _ready():
	sprite = get_node("BorssySprite")# $Sprite
	projectileScene = preload("res://Projectile.tscn")
	print(sprite)

func _input(event):
	if event.is_action_released("click"):
		print("Mouse released at: ", event.position)
		_shoot()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	look_at(get_global_mouse_position())
	# sprite.rotation = (get_global_mouse_position() - sprite.position).angle() + PI / 2

func _shoot():
	var projectile = projectileScene.instance()
	add_child(projectile)
	projectile.rotation = sprite.rotation
	projectile.position = position
	