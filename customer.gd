extends AnimatedSprite2D
@onready var area2d: Area2D = $Area2D

func _ready() -> void:
	add_to_group("customer")
	area2d.area_entered.connect(entered)

func _process(delta: float) -> void:
	pass

func entered(area: Area2D) -> void:
	print("yummy, thank you!")
