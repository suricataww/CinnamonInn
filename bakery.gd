extends Node2D
@onready var displayarea: Area2D = $Area2D

func _ready() -> void:
	displayarea.input_event.connect(pressed)

func pressed (viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT :
		get_tree().change_scene_to_file("res://display.tscn")
