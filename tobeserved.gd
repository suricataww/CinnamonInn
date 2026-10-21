extends AnimatedSprite2D
@onready var area2d: Area2D = $Area2D
var permis: bool = false

func _ready() -> void:
	area2d.area_entered.connect(customer)
	area2d.input_event.connect(pressed)
	modulate.a = 0
	position = Vector2(340,539)
	
func _process(delta: float) -> void:
	if global.display_selection > 0:
		frame = global.display_selection
		modulate.a = 1
	if permis == true:
		global_position = get_global_mouse_position()
		look_at(get_global_mouse_position())

func customer(area: Area2D) -> void:
	if get_parent().is_in_group("customer"):
		global.money += global.price
		#play animation de cha-ching!
		modulate.a = 0
		permis = false
		position = Vector2(340,539)

func pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		permis = true
