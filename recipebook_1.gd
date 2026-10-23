extends AnimatedSprite2D
@onready var pagstg: Area2D = $stg
@onready var pagdr: Area2D = $dr
@onready var select: Area2D = $select
@onready var animationp: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	pagstg.input_event.connect(pageleft)
	pagdr.input_event.connect(pageright)
	select.input_event.connect(selection)
	modulate.a = 1
	
func  pageleft(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if frame == 1:
			animationp.play("closing")
		else:
			frame -= 1

func pageright(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if frame == 0:
			animationp.play("opening")
		else:
			frame += 1

func selection(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.dish_selection = frame
		animationp.play("closing")
		get_tree().change_scene_to_file("res://pantry.tscn")
