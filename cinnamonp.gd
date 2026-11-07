extends AnimatedSprite2D

@onready var cinnamonp: Area2D = $Area2D
@onready var m1: Marker2D = $"../mpoz1"
@onready var m2: Marker2D = $"../mpoz2"
@onready var m3: Marker2D = $"../mpoz3"
@onready var m4: Marker2D = $"../mpoz4"
var markers: Array[Marker2D] = []

var permis: bool = false
var posit
var step_needed = 0
var asezat: bool = false

func _ready() -> void:
	if global.dish_selection == 3:
		step_needed = 9 #bs, trb schimbat
		cinnamonp.area_entered.connect(bowl_entered)
		cinnamonp.input_event.connect(mouse)
		add_to_group("cinnamonp")

func pos_assign() -> void:
	var k = 0
	markers = [m1, m2, m3, m4]
	while asezat == false:
		if global.mpoz[k] == false:
			global.mpoz[k] = true
			$".".global_position = markers[k].global_position
			asezat = true
		else:
			k += 1
	posit = position

func _process(delta: float) -> void:
	if permis == true:
		global_position = get_global_mouse_position()
	if global.dish_selection == 3:
		if global.progress_c == 9: #bs, trb schimbat
			modulate.a = 1
			$".".visible = true
		else:
			modulate.a = 0
			$".".visible = false

func mouse(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT and global.progress_c == step_needed:
		permis = true

func bowl_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("bowl"):
		permis = false
		#animation
		position = Vector2(678,391) #bs, trb schimbat
		frame = 1
		await get_tree().create_timer(0.6).timeout
		position = posit
		global.progress_c += 1
