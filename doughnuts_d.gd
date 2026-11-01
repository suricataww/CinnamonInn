extends AnimatedSprite2D
@onready var cake: Area2D = $Area2D
@onready var price: Label = $VBoxContainer/price
@onready var inventory: Label = $VBoxContainer/inventory

func _ready() -> void:
	cake.input_event.connect(pressed)
	modulate.a = 1
	price.text = ""
	inventory.text = ""
	frame = global.inv_doughnuts
	price.visible = false
	inventory.visible = false

func hoover() -> void:
	price.visible = true
	inventory.visible = true
	price.text = "$2"
	inventory.text = str(global.inv_doughnuts)

func hooverout() -> void:
	price.visible = false
	inventory.visible = false
	price.text = ""
	inventory.text = ""

func pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.inv_doughnuts -= 1
		frame = global.inv_doughnuts
		global.display_selection = 1 #de modificat? idk sigur ce reprezinta variabila asta yet
		global.price = 2
		get_tree().change_scene_to_file("res://bakery.tscn")
