extends AnimatedSprite2D

@onready var cake: Area2D = $Area2D
@onready var price: Label = $VBoxContainer/price
@onready var inventory: Label = $VBoxContainer/inventory

func _ready() -> void:
	cake.input_event.connect(pressed)
	modulate.a = 1
	price.text = ""
	inventory.text = ""
	print(scale)
	frame = global.inv_treat1

func hoover() -> void:
	price.text = "$10"
	inventory.text = str(global.inv_treat1)
	scale = Vector2(0.975,0.89)
		
func hooverout() -> void:
	price.text = ""
	inventory.text = ""
	scale = Vector2(0.944504, 0.867921)
	
func pressed (viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.inv_treat1 -= 1
		frame = global.inv_treat1
		global.display_selection = 1 #specific pentru cinnamon roll
		global.price = 5 #specific pentru cinnamon roll
		get_tree().change_scene_to_file("res://bakery.tscn")
