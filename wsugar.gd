extends AnimatedSprite2D
@onready var wsugar: Area2D = $Area2D

func _ready() -> void:
	wsugar.area_entered.connect(bol_entered)
	pass 

func _process(delta: float) -> void:
	if global.inv_wsugar >= 1:
		modulate.a = 1
	else:
		modulate.a = 0

func bol_entered(area: Area2D) -> void:
	if area.get_tree().has_group("bowl"):
		modulate.a = 0
