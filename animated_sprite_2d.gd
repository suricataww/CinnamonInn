extends AnimatedSprite2D

@onready var cake: Area2D = $Area2D
@onready var price: Label = $VBoxContainer/price
@onready var inventory: Label = $VBoxContainer/inventory

func _ready() -> void:
	cake.input_event.connect(pressed)
	modulate.a = 1
	price.text = ""
	inventory.text = ""
	frame = global.inv_treat1
	price.visible = false
	inventory.visible = false

func _process(delta: float) -> void:
	pass

func hoover() -> void:
	price.visible = true
	inventory.visible = true
	price.text = "$5"
	inventory.text = str(global.inv_treat1)
	#scale = Vector2(0.975,0.89)
		
func hooverout() -> void:
	price.visible = false
	inventory.visible = false
	price.text = ""
	inventory.text = ""
	#scale = Vector2(0.944504, 0.867921)
	
func pressed (viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.inv_treat1 -= 1
		frame = global.inv_treat1
		global.display_selection = 2 #specific pentru cinnamon roll; trb schimbat in 3
		global.price = 5 #specific pentru cinnamon roll
		get_tree().change_scene_to_file("res://bakery.tscn")
