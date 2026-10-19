extends AnimatedSprite2D

@onready var cake: Area2D = $Area2D
@onready var price: Label = $VBoxContainer/price
@onready var inventory: Label = $VBoxContainer/inventory

func _ready() -> void:
	cake.input_event.connect(pressed)
	price.text = ""
	inventory.text = ""

func _physics_process(delta: float) -> void:
	if global.inv_treat1 == 0:
		modulate.a = 0
	else:
		modulate.a = 1
func hoover() -> void:
	price.text = "$10"
	inventory.text = str(global.inv_treat1)
	scale = Vector2(2.06,1.41)
		
func hooverout() -> void:
	price.text = ""
	inventory.text = ""
	scale = Vector2(1.984375, 1.34375)
	
func pressed (viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.inv_treat1 -= 1
		get_tree().change_scene_to_file("res://bakery.tscn")
