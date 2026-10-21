extends AnimatedSprite2D
@onready var area2d: Area2D = $Area2D

func _ready() -> void:
	area2d.area_entered.connect(ing_entered)

func _process(delta: float) -> void:
	pass

func ing_entered(area = Area2D) -> void:
	if get_tree().has_group("wsugar"):
		frame = 1
