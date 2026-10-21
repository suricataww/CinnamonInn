extends AnimatedSprite2D
@onready var area2d: Area2D = $Area2D

func _ready() -> void:
	add_to_group("customer")
	area2d.area_entered.connect(entered)
	await get_tree().create_timer(0.4).timeout
	print("can you give me a cinnamon roll please?")

func _process(delta: float) -> void:
	pass

func entered(area: Area2D) -> void:
	print("yummy, thank you!")
