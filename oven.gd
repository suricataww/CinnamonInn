extends Node2D
@onready var space: Area2D = $Area2D
@onready var timer: AnimatedSprite2D = $timer
@onready var label: Label = $Label
var timp = 3
var necesity: bool = false

func _ready() -> void:
	space.area_entered.connect(space_entered)
	timer.modulate.a = 0
	label.visible = 1
	label.text = "Put it in the oven!"
	if global.dish_selection == 14:
		necesity = true

func space_entered(area: Area2D) -> void:
	if necesity == true:
		global.timer_prog = true
		label.visible = false
		timer.modulate.a = 1
		while timp:
			timer.frame = 1 #1/4
			await get_tree().create_timer(0.3).timeout
			timer.frame = 2 #2/4
			await get_tree().create_timer(0.3).timeout
			timer.frame = 3 #3/4
			await get_tree().create_timer(0.3).timeout
			timer.frame = 4 #4/4
			timp -= 1
		timer.modulate.a = 0
		label.text = "Taxe it out!"
		label.visible = true
		global.timer_prog = false
