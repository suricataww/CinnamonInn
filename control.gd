extends Control
@onready var play: Button = $VBoxContainer/Play
@onready var quit: Button = $VBoxContainer/Quit

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass


func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://menu_selection.tscn")
