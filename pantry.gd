extends Node2D
@onready var flour: Area2D = $flour/Area2D

func _ready() -> void:
	flour.input_event.connect(flour_pressed)

func _process(delta: float) -> void:
	pass

func flour_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		$slider.visible = true
		global.slider_selec = 1
