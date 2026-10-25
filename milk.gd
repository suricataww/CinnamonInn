extends AnimatedSprite2D
@onready var area_2d: Area2D = $Area2D
var permis: bool = false
var step_needed = 0

func _ready() -> void:
	if global.dish_selection == 1:
		step_needed = 1
	#aici ar trb pt fiecare fel de mancare in parte daca am nevoie si cand am
	
	#asta pt cand testez jocul pe bune, nu acuma in testing:
	#if global.invc_milk != 0:
		#modulate.a = 1
	modulate.a = 1
	area_2d.area_entered.connect(bowl_entered)
	area_2d.input_event.connect(mouse)
	position = Vector2(217,356)
	add_to_group("milk")

func _process(delta: float) -> void:
	if permis == true:
		global_position = get_global_mouse_position()
	if global.dish_selection == 1:
		if global.progress_c >= 4:
			modulate.a = 0
			$".".visible = false

func mouse(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT and global.progress_c == step_needed:
		permis = true

func bowl_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("bowl"):
		permis = false
		#animation
		position = Vector2(453,347)
		frame = 1
		await get_tree().create_timer(0.6).timeout
		position = Vector2(217,256)
		global.progress_c += 1
