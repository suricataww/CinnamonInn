extends Sprite2D
@onready var area: Area2D = $Area2D
var permis: bool = false
var permist: bool = false

func _ready() -> void:
	add_to_group("dish")
	area.input_event.connect(pressed)

func _process(delta: float) -> void:
	if global.timer_prog == true:
		permist = false
	else:
		permist = true
	if permis == true and permist == true:
		global_position = get_global_mouse_position()

func _on_area_2d_area_entered(area: Area2D) -> void:
	permis = false

func pressed(vieport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		permis = true
