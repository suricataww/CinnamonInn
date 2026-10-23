extends ScrollContainer


# TOTUL VA TREBUI SCHIMBAT O DATA CE STABILESTI CE DECOR VREI SA AI IN SHOP



#ingredient quantity
@onready var flour_qty: Label = $VBoxContainer/flour/qty
@onready var wsugar_qty: Label = $VBoxContainer/wsugar/qty
@onready var bsugar_qty: Label = $VBoxContainer/bsugar/qty
@onready var butter_qty: Label = $VBoxContainer/butter/qty
@onready var cinnamonp_qty: Label = $VBoxContainer/cinnamonp/qty 

#ingredient inventory
@onready var flour_inv: Label = $VBoxContainer/flour/inv
@onready var wsugar_inv: Label = $VBoxContainer/wsugar/inv
@onready var bsugar_inv: Label = $VBoxContainer/bsugar/inv
@onready var butter_inv: Label = $VBoxContainer/butter/inv
@onready var cinnamonp_inv: Label = $VBoxContainer/cinnamonp/inv 

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	#declararea inventarului ingredientelor
	flour_inv.text = "inventory: " + str(global.inv_flour) + "g"
	wsugar_inv.text = "inventory: " + str(global.inv_wsugar) + "g"
	bsugar_inv.text = "inventory: " + str(global.inv_bsugar) + "g"
	butter_inv.text = "inventory: " + str(global.inv_butter) + "g"
	cinnamonp_inv.text = "inventory: " + str(global.inv_cinnamonp) + "g"

func _on_flour_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_flour += 1000

func on_wsugar_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_wsugar += 500

func on_bsugar_pressed() -> void:
	if global.money >= 4.5:
		global.money -= 4.5
		global.inv_bsugar += 500

func on_butter_pressed() -> void:
	if global.money >= 12:
		global.money -= 12
		global.inv_butter += 200

func on_cinnamonp_pressed() -> void:
	if global.money >= 5:
		global.money -= 5
		global.inv_cinnamonp += 30
