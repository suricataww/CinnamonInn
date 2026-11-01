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
@onready var cocoa_qty: Label = $VBoxContainer/cocoa/qty
@onready var hwhipcream_qty: Label = $VBoxContainer/hwhipcream/qty
@onready var oil_qty: Label = $VBoxContainer/oil/qty
@onready var water_qty: Label = $VBoxContainer/water/qty
@onready var cowcheese_qty: Label = $VBoxContainer/cowcheese/qty
@onready var lemon_qty: Label = $VBoxContainer/lemon/qty
@onready var sourcream_qty: Label = $VBoxContainer/sourcream/qty
@onready var jam_qty: Label = $VBoxContainer/jam/qty
@onready var banana_qty: Label = $VBoxContainer/banana/qty
@onready var chocolate_qty: Label = $VBoxContainer/chocolate/qty
@onready var nutmeg_qty: Label = $VBoxContainer/nutmeg/qty
@onready var agaves_qty: Label = $VBoxContainer/agaves/qty
@onready var mascarpone_qty: Label = $VboxContainer/mascarpone/qty
@onready var espresso_qty: Label = $VBoxContainer/espresso/qty
@onready var ladyfingers_qty: Label = $VBoxContainer/ladyfingers/qty
@onready var biscuits_qty: Label = $VBoxContainer/biscuits/qty
@onready var gelatine_qty: Label = $VBoxContainer/gelatine/qty
@onready var fruits_qty: Label = $VBoxContainer/fruits/qty
@onready var bread_qty: Label = $VBoxContainer/bread/qty
@onready var walnuts_qty: Label = $VBoxContainer/walnuts/qty
@onready var applesauce_qty: Label = $VBoxContainer/applesauce/qty
@onready var ginger_qty: Label = $VBoxContainer/ginger/qty
@onready var carrots_qty: Label = $VBoxContainer/carrots/qty
@onready var raisins_qty: Label = $VBoxContainer/raisins/qty
@onready var coconut_qty: Label = $VBoxContainer/coconut/qty
@onready var rumessence_qty: Label = $VBoxContainer/rumessence/qty
@onready var molasses_qty: Label = $VBoxContainer/molasses/qty
@onready var rahat_qty: Label = $VBoxContainer/rahat/qty
@onready var vinegar_qty: Label = $VBoxContainer/vinegar/qty
@onready var reddye_qty: Label = $VBoxContainer/reddye/qty

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
@onready var cocoa_inv: Label = $VBoxContainer/cocoa/inv
@onready var hwhipcream_inv: Label = $VBoxContainer/hwhipcream/inv
@onready var oil_inv: Label = $VBoxContainer/oil/inv
@onready var water_inv: Label = $VBoxContainer/water/inv
@onready var cowcheese_inv: Label = $VBoxContainer/cowcheese/inv
@onready var lemon_inv: Label = $VBoxContainer/lemon/inv
@onready var sourcream_inv: Label = $VBoxContainer/sourcream/inv
@onready var jam_inv: Label = $VBoxContainer/jam/inv
@onready var banana_inv: Label = $VBoxContainer/banana/inv
@onready var chocolate_inv: Label = $VBoxContainer/chocolate/inv
@onready var nutmeg_inv: Label = $VBoxContainer/nutmeg/inv
@onready var agaves_inv: Label = $VBoxContainer/agaves/inv
@onready var mascarpone_inv: Label = $VBoxContainer/mascarpone/inv
@onready var espresso_inv: Label = $VBoxContainer/espresso/inv
@onready var ladyfingers_inv: Label = $VBoxContainer/ladyfingers/inv
@onready var biscuits_inv: Label = $VBoxContainer/biscuits/inv
@onready var gelatine_inv: Label = $VBoxContainer/gelatine/inv
@onready var fruits_inv: Label = $VBoxContainer/fruits/inv
@onready var bread_inv: Label = $VBoxContainer/bread/inv
@onready var walnuts_inv: Label = $VBoxContainer/walnuts/inv
@onready var applesauce_inv: Label = $VBoxContainer/applesauce/inv
@onready var ginger_inv: Label = $VBoxContainer/ginger/inv
@onready var carrots_inv: Label = $VBoxContainer/carrots/inv
@onready var raisins_inv: Label = $VBoxContainer/raisins/inv
@onready var coconut_inv: Label = $VBoxContainer/coconut/inv
@onready var rumessence_inv: Label = $VBoxContainer/rumessence/inv
@onready var molasses_inv: Label = $VBoxContainer/molasses/inv
@onready var rahat_inv: Label = $VBoxContainer/rahat/inv
@onready var vinegar_inv: Label = $VBoxContainer/vinegar/inv
@onready var reddye_inv: Label = $VBoxContainer/reddye/inv

#sparkles
@onready var sparkles: GPUParticles2D = $"../GPUParticles2D"

func _ready() -> void:
	sparkles.emitting = false
	#sparkles.input_event.connect(effects)
	pass

func _process(delta: float) -> void:
	#sparkles.emitting = true
	sparkles.global_position = get_global_mouse_position()
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
	cocoa_inv.text = "inventory: " + str(global.inv_cocoa) + "g"
	hwhipcream_inv.text = "inventory: " + str(global.inv_hwhipcream) + "g"
	oil_inv.text = "inventory: " + str(global.inv_oil) + "ml"
	water_inv.text = "inventory: " + str(global.inv_water) + "ml"
	cowcheese_inv.text = "inventory: " + str(global.inv_cowcheese) + "g"
	lemon_inv.text = "inventory: " + str(global.inv_lemon) + "g"
	sourcream_inv.text = "inventory: " + str(global.inv_sourcream) + "g"
	jam_inv.text = "inventory: " + str(global.inv_jam) + "g"
	banana_inv.text = "inventory: " + str(global.inv_banana)
	chocolate_inv.text = "inventory: " + str(global.inv_chocolate) + "g"
	nutmeg_inv.text = "inventory: " + str(global.inv_nutmeg) + "g"
	agaves_inv.text = "inventory: " + str(global.inv_agaves) + "ml"
	mascarpone_inv.text = "inventory: " + str(global.inv_mascarpone) + "g"
	espresso_inv.text = "inventory: " + str(global.inv_espresso)
	ladyfingers_inv.text = "inventory: " + str(global.inv_ladyfingers)
	biscuits_inv.text = "inventory: " + str(global.inv_biscuits) + "g"
	gelatine_inv.text = "inventory: " + str(global.inv_gelatine) + "g"
	fruits_inv.text = "inventory: " + str(global.inv_fruits) + "g"
	bread_inv.text = "inventory: " + str(global.inv_bread) 
	walnuts_inv.text = "inventory: " + str(global.inv_walnuts) + "g"
	applesauce_inv.text = "inventory: " + str(global.inv_applesauce) + "g"
	ginger_inv.text = "inventory: " + str(global.inv_ginger) + "g"
	carrots_inv.text = "inventory: " + str(global.inv_carrots) + "g"
	raisins_inv.text = "inventory: " + str(global.inv_raisins) + "g"
	coconut_inv.text = "inventory: " + str(global.inv_coconut) + "g"
	rumessence_inv.text = "inventory: " + str(global.inv_rumessence)
	molasses_inv.text = "inventory: " + str(global.inv_molasses) + "g"
	rahat_inv.text = "inventory: " + str(global.inv_rahat) + "g"
	vinegar_inv.text = "inventory: " + str(global.inv_vinegar) + "ml"
	reddye_inv.text = "inventory: " + str(global.inv_reddye) + "ml"

#functie pentru efecte ale apasarii butonului (vizual si auditiv)
func effects() -> void:
	sparkles.emitting = true
	await get_tree().create_timer(0.32).timeout
	sparkles.emitting = false
	#sunet
	pass

func _on_flour_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_flour += 1000
		effects()
func on_wsugar_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_wsugar += 500
		effects()
func on_bsugar_pressed() -> void:
	if global.money >= 4.5:
		global.money -= 4.5
		global.inv_bsugar += 500
		effects()
func on_butter_pressed() -> void:
	if global.money >= 12:
		global.money -= 12
		global.inv_butter += 200
		effects()
func on_cinnamonp_pressed() -> void:
	if global.money >= 5:
		global.money -= 5
		global.inv_cinnamonp += 30
		effects()
func on_milk_pressed() -> void:
	if global.money >= 10:
		global.money -= 10
		global.inv_milk +=1000
		effects()
func on_eggs_pressed() -> void:
	if global.moeny >= 15:
		global.money -=15
		global.inv_eggs += 10
		effects()
func on_yeast_pressed() -> void:
	if global.money >= 1.5:
		global.money -= 1.5
		global.inv_yeast += 25
		effects()
func on_salt_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_salt += 100
		effects()
func on_creamcheese_pressed() -> void:
	if global.money >= 22.5:
		global.money -= 22.5
		global.inv_creamcheese += 500
		effects()
func on_vanilla_pressed() -> void:
	if global.money >= 2.5:
		global.money -= 2.5
		global.inv_vanilla += 1
		effects()
func on_cocoa_pressed() -> void:
	if global.money >= 13:
		global.money -= 13
		global.inv_cocoa += 100
		effects()
func on_hwhipcream_pressed() -> void:
	if global.money >= 20:
		global.money -= 20
		global.inv_hwhipcream += 500
		effects()
func on_oil_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_oil += 1000
		effects()
func on_water_pressed() -> void:
	if global.money >= 4.5:
		global.money -= 4.5
		global.inv_water += 1000
		effects()
func on_cowcheese_pressed() -> void:
	if global.money >= 5:
		global.money -= 5
		global.inv_cowcheese += 500
		effects()
func on_lemon_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_lemon += 200
		effects()
func on_sourcream_pressed() -> void:
	if global.money >= 12.5:
		global.money -= 12.5
		global.inv_sourcream += 500
		effects()
func on_jam_pressed() -> void:
	if global.money >= 12:
		global.money -= 12
		global.inv_jam += 200
		effects()
func on_banana_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_banana += 1
		effects()
func on_chocolate_pressed() -> void:
	if global.money >= 10:
		global.money -= 10
		global.inv_chocolate += 100
		effects()
func on_nutmeg_pressed() -> void:
	if global.money >= 8:
		global.money -= 8
		global.inv_nutmeg += 15
		effects()
func on_agaves_pressed() -> void:
	if global.money >= 7.5:
		global.money -= 7.5
		global.inv_agaves += 100
		effects()
func on_mascarpone_pressed() -> void:
	if global.money >= 15:
		global.money -= 15
		global.inv_mascarpone += 250
		effects()
func on_espresso_pressed() -> void:
	if global.money >= 3:
		global.money -= 3
		global.inv_espresso += 1
		effects()
func on_ladyfingers_pressed() -> void:
	if global.money >= 13:
		global.money -= 13
		global.inv_ladyfingers += 1
		effects()
func on_biscuits_pressed() -> void:
	if global.money >= 10:
		global.money -= 10
		global.inv_biscuits += 500
		effects()
func on_gelatine_pressed() -> void:
	if global.money >= 1.5:
		global.money -= 1.5
		global.inv_gelatine += 10
		effects()
func on_fruits_pressed() -> void:
	if global.money >= 7.5:
		global.money -= 7.5
		global.inv_furits += 250
		effects()
func on_bread_pressed() -> void:
	if global.money >= 6:
		global.money -= 6
		global.inv_bread += 16
		effects()
func on_walnuts_pressed() ->void:
	if global.money >= 13:
		global.money -= 13
		global.inv_walnuts += 200
		effects()
func on_applesauce_pressed() -> void:
	if global.money >= 30:
		global.money -= 30
		global.inv_applesauce += 300
		effects()
func on_ginger_pressed() -> void:
	if global.money >= 20:
		global.money -= 20
		global.inv_ginger += 15
		effects()
func on_carrots_pressed() -> void:
	if global.money >= 2:
		global.money -= 2
		global.inv_carrots += 500
		effects()
func on_raisins_pressed() -> void:
	if global.money >= 10:
		global.money -= 10
		global.inv_raisins += 200
		effects()
func on_coconut_pressed() -> void:
	if global.money >= 3:
		global.money -= 3
		global.inv_coconut += 70
		effects()
func on_rumessence_pressed() -> void:
	if global.money >= 5:
		global.money -= 5
		global.inv_rumessence += 4
		effects()
func on_molasses_pressed() -> void:
	if global.money >= 75:
		global.money -= 75
		global.inv_molasses += 350
		effects()
func on_rahat_pressed() -> void:
	if global.money >= 5:
		global.money -= 5
		global.inv_rahat += 250
		effects()
func on_vinegar_pressed() -> void:
	if global.money >= 1:
		global.money -= 1
		global.inv_vinegar += 250
		effects()
func on_reddye_pressed() -> void:
	if global.money >= 2.5:
		global.money -= 2.5
		global.inv_reddye += 25
		effects()
