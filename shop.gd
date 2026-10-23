extends Node2D
@onready var vbox_ing: ScrollContainer = $ScrollContainer
@onready var vbox_deco: ScrollContainer = $ScrollContainer2 
var type 

func _ready() -> void:
	type = 1
	
func _process(delta: float) -> void:
	if(type == 1):
		vbox_ing.visible = true
		vbox_deco.visible = false

func _on_bingredients_pressed() -> void:
	vbox_ing.visible = true
	vbox_deco.visible = false

func _on_bdecoration_pressed() -> void:
	type = 0
	vbox_ing.visible = false
	vbox_deco.visible = true
	
