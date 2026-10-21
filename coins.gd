extends Label
@onready var coin: Label = $"."
func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	coin.text = str(global.money)
