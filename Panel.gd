extends Panel

var node

func _ready():
	node = get_node("Button")
	node.connect("pressed", self, "_on_Button_pressed")
	print("lol")
	pass # Replace with function body.


func _on_Button_pressed():
	node.text = "jee"
	print("Button pressed")
