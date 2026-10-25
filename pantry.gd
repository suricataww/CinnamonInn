extends Node2D
@onready var flour: Area2D = $flour/Area2D

func _ready() -> void:
	if global.dish_selection == 1: #doughnuts
		global.progress_total = 19
		#aici trb sa adaug in plus pasi pt partile de amestecat/bagat la cuptor/firigder, etc.
		#la doughnuts ce am zis sus am luat in considerare, la restul inca nu
	if global.dish_selection == 2:
		global.progress_total = 9
	if global.dish_selection == 3:
		global.progress_total = 11
	if global.dish_selection == 4:
		global.progress_total = 10 #aici am numarat si smantana si gemul, poate ar trb sa le pun la decorat separat
	#to be continued with the others cand aleg o ordine finala
	flour.input_event.connect(flour_pressed)

func _process(delta: float) -> void:
	pass

func flour_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		$slider.visible = true
		global.slider_selec = 1

func _on_proceed_b_pressed() -> void:
	get_tree().change_scene_to_file("res://kitchentable.tscn")
