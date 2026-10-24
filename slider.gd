extends Control
@onready var quantity: Label = $HSlider/quantity
@onready var maximumqty: Label = $HSlider/maximumqty
@onready var slider: HSlider = $HSlider
var progress = 0
var progress_total = 0

func _ready() -> void:
	if global.dish_selection == 1:
		progress_total = 11
	progress = 0
	self.visible = false
	slider.value = 0

func _process(delta: float) -> void:
	#aspect of the slider
	$AnimatedSprite2D.frame = global.slider_selec-1
	if global.slider_selec == 1:
		slider.max_value = global.inv_flour
		maximumqty.text = str(global.inv_flour)
		global.invc_flour = slider.value
		quantity.text = "quantity: " + str(global.invc_flour) + "g"

	if global.slider_selec == 2:
		slider.max_value = global.inv_wsugar
		maximumqty.text = str(global.inv_wsugar)
		global.invc_wsugar = slider.value
		quantity.text = "quantity: " + str(global.invc_sugar) + "g"
	
	if global.slider_selec == 3:
		slider.max_value = global.inv_bsugar
		maximumqty.text = str(global.inv_bsugar)
		global.invc_bsugar = slider.value
		quantity.text = "quantity: " + str(global.invc_bsugar) + "g"
	
	if global.slider_selec == 4:
		slider.max_value = global.inv_butter
		maximumqty.text = str(global.inv_butter)
		global.invc_butter = slider.value
		quantity.text = "quantity: " + str(global.invc_butter) + "g"
	
	if global.slider_selec == 5:
		slider.max_value = global.inv_cinnamonp
		maximumqty.text = str(global.inv_cinnamonp)
		global.invc_cinnamonp = slider.value
		quantity.text = "quantity: " + str(global.invc_cinnamonp)
	
	if global.slider_selec == 6:
		slider.max_value = global.inv_milk
		maximumqty.text = str(global.inv_milk)
		global.invc_milk = slider.value
		quantity.text = "quantity: " + str(global.invc_milk) + "ml"
	
	if global.slider_selec == 7:
		slider.max_value = global.inv_eggs
		maximumqty.text = str(global.inv_eggs)
		global.invc_eggs = slider.value
		quantity.text = "quantity: " + str(global.invc_eggs)
	
	if global.slider_selec == 8:
		slider.max_value = global.inv_yeast
		maximumqty.text = str(global.inv_yeast)
		global.invc_yeast = slider.value
		quantity.text = "quantity: " + str(global.invc.yeast) + "g"
	
	if global.slider_selec == 9:
		slider.max_value = global.inv_salt
		maximumqty.text = str(global.inv_salt)
		global.invc_salt = slider.value
		quantity.text = "quantity: " + str(global.invc_salt) + "g"
	
	if global.slider_selec == 10:
		slider.max_value = global.inv_creamcheese
		maximumqty.text = str(global.inv_creamcheese)
		global.invc_creamcheese = slider.value
		quantity.text = "quantity: " + str(global.invc_creamcheese) + "g"
	
	if global.slider_selec == 11:
		slider.max_value = global.inv_vanilla
		maximumqty.text = str(global.inv_vanilla)
		global.invc_vanilla = slider.value
		quantity.text = "quantity: " + str(global.invc_vanilla)
	
	if global.slider_selec == 12:
		slider.max_value = global.inv_cocoa
		maximumqty.text = str(global.inv_cocoa)
		global.invc_coca = slider.value
		quantity.text = "quantity: " + str(global.invc_cocoa) + "g"
	
	if global.slider_selec == 13:
		slider.max_value = global.inv_hwhipcream
		maximumqty.text = str(global.inv_hwhipcream)
		global.invc_hwhipcream = slider.value
		quantity.text = "quantity: " + str(global.invc_hwhipcream) + "g"
	
	if global.slider_selec == 14:
		slider.max_value = global.inv_oil
		maximumqty.text = str(global.inv_oil)
		global.invc_oil = slider.value
		quantity.text = "quantity: " + str(global.invc_oil) + "ml"
	
	if global.slider_selec == 15:
		slider.max_value = global.inv_water
		maximumqty.text = str(global.inv_water)
		global.invc_water = slider.value
		quantity.text = "quantity: " + str(global.invc_water) + "ml"
	
	if global.slider_selec == 16:
		slider.max_value = global.inv_cowcheese
		maximumqty.text = str(global.inv_cowcheese)
		global.invc_cowcheese = slider.value
		quantity.text = "quantity: " + str(global.invc_cowcheese) + "g"
	
	if global.slider_selec == 17:
		slider.max_value = global.inv_lemon
		maximumqty.text = str(global.inv_lemon)
		global.invc_lemon = slider.value
		quantity.text = "quantity: " + str(global.invc_lemon)
	
	if global.slider_selec == 18:
		slider.max_value = global.inv_sourcream
		maximumqty.text = str(global.inv_sourcream)
		global.invc_sourcream = slider.value
		quantity.text = "quantity: " + str(global.invc_sourcream) + "g"
	
	if global.slider_selec == 19:
		slider.max_value = global.inv_jam
		maximumqty.text = str(global.inv_jam)
		global.invc_jam = slider.value
		quantity.text = "quantity: " + str(global.invc_jam) + "g"
	
	if global.slider_selec == 20:
		slider.max_value = global.inv_banana
		maximumqty.text = str(global.inv_banana)
		global.inv_banana = slider.value
		quantity.text = "quantity: " + str(global.invc_banana)
	
	#change of scene to the actual cooking part when all ingredients have been selected
	if progress == progress_total:
		get_tree().change_scene_to_file("res://kitchentable.tscn") #probabil va trb schimbat ulterior idk

func _on_proceed_pressed() -> void:
	#in if-urile astea ar mai trebui niste verificari cu daca ai suficent pt reteta cand selectezi
	#sau doar ar trb sa schimb jocul as a whole si sa sar peste partea asta de selectie?
	
	#aici ar mai trebui undeva sa se trimita niste variabile/semnale ca sa monitorizam progresul de selectie
	#adica cate itemuri mai ai de luat de pe raft pentru a putea sa faci reteta
	self.visible = false
	if global.slider_selec == 1:
		global.inv_flour -= global.invc_flour
	if global.slider_selec == 2:
		global.inv_wsugar -= global.invc_wsugar
	if global.slider_selec == 3:
		global.inv_bsugar -= global.invc_bsugar
	if global.slider_selec == 4:
		global.inv_butter -= global.invc_butter
	if global.slider_selec == 5:
		global.inv_cinnamonp -= global.invc_cinnamonp
	if global.slider_selec == 6:
		global.inv_milk -= global.invc_milk
	if global.slider_selec == 7:
		global.inv_eggs -= global.invc_eggs
	if global.slider_selec == 8:
		global.inv_yeast -= global.invc_yeast
	if global.slider_selec == 9:
		global.inv_salt = global.invc_salt
	if global.slider_selec == 10:
		global.inv_creamcheese -= global.invc_creamcheese
	if global.slider_selec == 11:
		global.inv_vanilla -= global.invc_vanilla
	if global.slider_selec == 12:
		global.inv_cocoa -= global.invc_cocoa
	if global.slider_selec == 13:
		global.inv_hwhipcream -= global.invc_hwhipcream
	if global.slider_selec == 14:
		global.inv_oil -= global.invc_oil
	if global.slider_selec == 15:
		global.inv_water -= global.inv_oil
	if global.slider_selec == 16:
		global.inv_cowcheese -= global.invc_cowcheese
	if global.slider_selec == 17:
		global.inv_lemon -= global.invc_lemon
	if global.slider_selec == 18:
		global.inv_sourcream -= global.invc_sourcream
	if global.slider_selec == 19:
		global.inv_jam -= global.invc_jam
	if global.slider_selec == 20:
		global.inv_banana -= global.invc_banana
	slider.value = 0
	progress += 1

func _on_back_pressed() -> void:
	self.visible = false
	slider.value = 0
