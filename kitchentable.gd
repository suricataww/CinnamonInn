extends Node2D

func _ready() -> void:
	global.progress_c = 1

func _process(delta: float) -> void:
	$VBoxContainer.milk_strike()
	$VBoxContainer.sugar_strike()
	$VBoxContainer.yeast_strike()
	$VBoxContainer.egg_strike()
	$VBoxContainer.vanilla_strike()
	$VBoxContainer.flour_strike()
	$VBoxContainer.salt_strike()
	$VBoxContainer.butter_strike()
