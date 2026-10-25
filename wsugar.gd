extends AnimatedSprite2D
@onready var wsugar: Area2D = $Area2D
var permis: bool = false
var step_needed = 0

func _ready() -> void:
	if global.dish_selection == 1:
		step_needed = 2
	modulate.a = 1
	wsugar.area_entered.connect(bowl_entered)
	wsugar.input_event.connect(mouse)
	position = Vector2(352,219)

func _process(delta: float) -> void:
	if permis == true:
		global_position = get_global_mouse_position()
	if global.dish_selection == 1:
		if global.progress_c >= 4:
			modulate.a = 0
			visible = false

func mouse(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT and global.progress_c == step_needed:
		permis = true

func bowl_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("bowl"):
		permis = false
		#animation
		position = Vector2(100.0,113)
		frame = 1
		await get_tree().create_timer(0.6).timeout
		position = Vector2(352,219)
		global.progress_c += 1
