extends ScrollContainer
#ingredient quantity
@onready var flour_qty: Label = $VBoxContainer/flour/qty
@onready var wsugar_qty: Label = $VBoxContainer/wsugar/qty
@onready var bsugar_qty: Label = $VBoxContainer/bsugar/qty
@onready var butter_qty: Label = $VBoxContainer/butter/qty
@onready var cinnamonp_qty: Label = $VBoxContainer/cinnamonp/qty 
@onready var milk_qty: Label = $VBoxContainer/milk/qty 
@onready var eggs_qty: Label = $VBoxContainer/eggs/qty 
@onready var yeast_qty: Label = $VBoxContainer/yeast/qty 
@onready var salt_qty: Label = $VBoxContainer/salt/qty
@onready var creamcheese_qty: Label = $VBoxContainer/creamcheese/qty
@onready var vanilla_qty: Label = $VBoxContainer/vanilla/qty   

#ingredient inventory
@onready var flour_inv: Label = $VBoxContainer/flour/inv
@onready var wsugar_inv: Label = $VBoxContainer/wsugar/inv
@onready var bsugar_inv: Label = $VBoxContainer/bsugar/inv
@onready var butter_inv: Label = $VBoxContainer/butter/inv
@onready var cinnamonp_inv: Label = $VBoxContainer/cinnamonp/inv 
@onready var milk_inv: Label = $VBoxContainer/milk/inv 
@onready var eggs_inv: Label = $VBoxContainer/eggs/inv 
@onready var yeast_inv: Label = $VBoxContainer/yeast/inv 
@onready var salt_inv: Label = $VBoxContainer/salt/inv
@onready var creamcheese_inv: Label = $VBoxContainer/creamcheese/inv
@onready var vanilla_inv: Label = $VBoxContainer/vanilla/inv

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	#declararea inventarului ingredientelor
	flour_inv.text = "inventory: " + str(global.inv_flour) + "g"
	wsugar_inv.text = "inventory: " + str(global.inv_wsugar) + "g"
	bsugar_inv.text = "inventory: " + str(global.inv_bsugar) + "g"
	butter_inv.text = "inventory: " + str(global.inv_butter) + "g"
	cinnamonp_inv.text = "inventory: " + str(global.inv_cinnamonp) + "g"
	milk_inv.text = "inventory: " + str(global.inv_milk) + "ml"
	eggs_inv.text = "inventory: " + str(global.inv_eggs)
	yeast_inv.text = "inventory: " + str(global.inv_yeast) + "g"
	salt_inv.text = "inventory: " + str(global.inv_salt) + "g"
	creamcheese_inv.text = "inventory: " + str(global.inv_creamcheese) + "g"
	vanilla_inv.text = "inventory: " + str(global.inv_vanilla) 

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

func on_milk_pressed() -> void:
	if global.money >= 10:
		global.money -= 10
		global.inv_milk +=1000

func on_eggs_pressed() -> void:
	if global.moeny >= 15:
		global.money -=15
		global.inv_eggs += 10

func on_yeast_pressed() -> void:
	if global.money >= 1.5:
		global.money -= 1.5
		global.inv_yeast += 25

func on_salt_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_salt += 100

func on_creamcheese_pressed() -> void:
	if global.money >= 22.5:
		global.money -= 22.5
		global.inv_creamcheese += 500

func on_vanilla_pressed() -> void:
	if global.money >= 2.5:
		global.money -= 2.5
		global.inv_vanilla += 1
