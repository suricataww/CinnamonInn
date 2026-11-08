extends Node2D
@onready var fridge: Area2D = $fridge/Area2D
@onready var oven: Area2D = $oven/Area2D
@onready var stove: Area2D = $stove/Area2D

func _ready() -> void:
	fridge.area_entered.connect(fridge_clicked)
	oven.area_entered.connect(oven_clicked)
	stove.area_entered.connect(stove_clicked)

func _process(delta: float) -> void:
	pass
