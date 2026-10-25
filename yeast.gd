extends AnimatedSprite2D
@onready var yeast: Area2D = $Area2D
var permis: bool = false
var step_needed = 0

func _ready() -> void:
	if global.dish_selection == 1:
		step_needed = 3
	modulate.a = 1
	yeast.area_entered.connect(bowl_entered)
	yeast.input_event.connect(mouse)
	position = Vector2(933,340)

func _process(delta: float) -> void:
	if permis == true:
		global_position = get_global_mouse_position()
	if global.dish_selection == 1:
		if global.progress_c >= 4:
			modulate.a = 0
			$"../yeast".visible = false

func mouse(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT and global.progress_c == step_needed:
		permis = true
		print("MERGE")

func bowl_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("bowl"):
		permis = false
		#animation
		position = Vector2(704,343)
		frame = 1
		await get_tree().create_timer(0.6).timeout
		position = Vector2(933,340)
		global.progress_c += 1
