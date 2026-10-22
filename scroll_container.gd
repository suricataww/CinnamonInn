extends ScrollContainer
##ingredient prices
#@onready var flour_price: Label = $VBoxContainer/flour/price
#@onready var wsugar_price: Label = $VBoxContainer/wsugar/price
#@onready var bsugar_price: Label = $VBoxContainer/bsugar/price
#@onready var butter_price: Label = $VBoxContainer/butter/price
#@onready var cinnamonp_price: Label = $VBoxContainer/butter/price # !de sch la cinnamon cand il faci!

#ingredient quantity
@onready var flour_qty: Label = $VBoxContainer/flour/qty
@onready var wsugar_qty: Label = $VBoxContainer/wsugar/qty
@onready var bsugar_qty: Label = $VBoxContainer/bsugar/qty
@onready var butter_qty: Label = $VBoxContainer/butter/qty
@onready var cinnamonp_qty: Label = $VBoxContainer/butter/qty # !de sch la cinnamon cand il faci!

#ingredient inventory
@onready var flour_inv: Label = $VBoxContainer/flour/inv
@onready var wsugar_inv: Label = $VBoxContainer/wsugar/inv
@onready var bsugar_inv: Label = $VBoxContainer/bsugar/inv
@onready var butter_inv: Label = $VBoxContainer/butter/inv
@onready var cinnamonp_inv: Label = $VBoxContainer/butter/inv # !de sch la cinnamon cand il faci!

func _ready() -> void:
	pass
	#declararea pretului ingredientelor
	#flour_price.text = "price: $2"
	#wsugar_price.text = "price: $4"
	#bsugar_price.text = "price: $9"
	#butter_price.text = "price: $"
	#declararea cantitatii ingredientelor


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#declararea inventarului ingredientelor
	flour_inv.text = "inventory: " + str(global.inv_flour)
	wsugar_inv.text = "inventory: " + str(global.inv_wsugar)
	bsugar_inv.text = "inventory: " + str(global.inv_bsugar)
	butter_inv.text = "inventory: " + str(global.inv_butter)
	cinnamonp_inv.text = "inventory: " + str(global.inv_cinnamonp)

func _on_flour_pressed() -> void:
	pass # Replace with function body.

func on_wsugar_pressed() -> void:
	pass # Replace with function body.
