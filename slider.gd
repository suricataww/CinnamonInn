extends Control
@onready var quantity: Label = $HSlider/quantity
@onready var maximumqty: Label = $HSlider/maximumqty
@onready var slider: HSlider = $HSlider

func _ready() -> void:
	self.visible = false
	slider.value = 0

func _process(delta: float) -> void:
	if global.slider_selec == 1:
		slider.max_value = global.inv_flour
		maximumqty.text = str(global.inv_flour)
		global.invc_flour = slider.value
		quantity.text = "quantity: " + str(global.invc_flour) + "g"
		print(global.invc_flour)

func _on_proceed_pressed() -> void:
	self.visible = false
	global.inv_flour -= global.invc_flour
	slider.value = 0

func _on_back_pressed() -> void:
	self.visible = false
	slider.value = 0
