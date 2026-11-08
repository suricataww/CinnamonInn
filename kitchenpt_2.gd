extends Node2D
@onready var fridge: Area2D = $fridge/Area2D
@onready var oven: Area2D = $oven/Area2D
@onready var stove: Area2D = $stove/Area2D

func _ready() -> void:
	fridge.input_event.connect(fridge_clicked)
	oven.input_event.connect(oven_clicked)
	stove.input_event.connect(stove_clicked)

func _process(delta: float) -> void:
	pass

func fridge_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://fridge.tscn")

func oven_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://oven.tscn")

func stove_clicked(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		get_tree().change_scene_to_file("res://stove.tscn")
