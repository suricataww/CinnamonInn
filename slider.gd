extends Control
@onready var quantity: Label = $HSlider/quantity
@onready var maximumqty: Label = $HSlider/maximumqty
@onready var slider: HSlider = $HSlider
var progress = 0

func _ready() -> void:
	progress = 0
	self.visible = false
	slider.value = 0
	$"../proceed_b".visible = false

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
	if global.slider_selec == 21:
		slider.max_value = global.inv_chocolate
		maximumqty.text = str(global.inv_chocolate)
		global.invc_chocolate = slider.value
		quantity.text = "quantity: " + str(global.invc_chocolate) + "g"
	if global.slider_selec == 22:
		slider.max_value = global.inv_nutmeg
		maximumqty.text = str(global.inv_nutmeg)
		global.invc_nutmeg = slider.value
		quantity.text = "quantity: " + str(global.invc_nutmeg) + "g"
	if global.slider_selec == 23:
		slider.max_value = global.inv_agaves
		maximumqty.text = str(global.inv_agaves)
		global.invc_agaves = slider.value
		quantity.text = "quantity: " + str(global.invc_agaves) + "ml"
	if global.slider_selec == 24:
		slider.max_value = global.inv_mascarpone
		maximumqty.text = str(global.inv_mascarpone)
		global.invc_mascarpone = slider.value
		quantity.text = "quantity: " + str(global.invc_mascarpone) + "g"
	if global.slider_selec == 25:
		slider.max_value = global.inv_espresso
		maximumqty.text = str(global.inv_espresso)
		global.invc_espresso = slider.value
		quantity.text = "quantity: " + str(global.invc_espresso)
	if global.slider_selec == 26:
		slider.max_value = global.inv_ladyfingers
		maximumqty.text = str(global.inv_ladyfingers)
		global.invc_ladyfingers = slider.value
		quantity.text = "quantity: " + str(global.invc_ladyfinges)
	if global.slider_selec == 27:
		slider.max_value = global.inv_biscuits
		maximumqty.text = str(global.inv_biscuits)
		global.invc_biscuits = slider.value
		quantity.text = "quantity: " + str(global.invc_biscuits) + "g"
	if global.slider_selec == 28:
		slider.max_value = global.inv_gelatine
		maximumqty.text = str(global.inv_gelatine)
		global.invc_gelatine = slider.value
		quantity.text = "quantity: " + str(global.invc_gelatine) + "g"
	if global.slider_selec == 29:
		slider.max_value = global.inv_fruits
		maximumqty.text = str(global.inv_fruits)
		global.invc_fruits = slider.value
		quantity.text = "quantity: " + str(global.invc_fruits) + "g"
	if global.slider_selec == 30:
		slider.max_value = global.inv_bread
		maximumqty.text = str(global.inv_bread)
		global.invc_bread = slider.value
		quantity.text = "quantity: " + str(global.invc_bread)
	if global.slider_selec == 31:
		slider.max_value = global.inv_walnuts
		maximumqty.text = str(global.inv_walnuts)
		global.invc_walnuts = slider.value
		quantity.text = "quantity: " + str(global.invc_walnuts) + "g"
	if global.slider_selec == 32:
		slider.max_value = global.inv_applesauce
		maximumqty.text = str(global.inv_applesauce)
		global.invc_applesauce = slider.value
		quantity.text = "quantity: " + str(global.invc_applesauce) + "g"
	if global.slider_selec == 33:
		slider.max_value = global.inv_ginger
		maximumqty.text = str(global.inv_ginger)
		global.invc_ginger = slider.value
		quantity.text = "quantity: " + str(global.invc_ginger) + "g"
	if global.slider_selec == 34:
		slider.max_value = global.inv_carrots
		maximumqty.text = str(global.inv_carrots)
		global.invc_carrots = slider.value
		quantity.text = "quantity: " + str(global.invc_carrots) + "g"
	if global.slider_selec == 35:
		slider.max_value = global.inv_raisins
		maximumqty.text = str(global.inv_raisins)
		global.invc_raisins = slider.value
		quantity.text = "quantity: " + str(global.invc_raisins) + "g"
	if global.slider_selec == 36:
		slider.max_value = global.inv_coconut
		maximumqty.text = str(global.inv_coconut)
		global.invc_coconut = slider.value
		quantity.text = "quantity: " + str(global.invc_coconut) + "g"
	if global.slider_selec == 37:
		slider.max_value = global.inv_rumessence
		maximumqty.text = str(global.inv_rumessence)
		global.invc_rumessence = slider.value
		quantity.text = "quantity: " + str(global.invc_rumessence)
	if global.slider_selec == 38:
		slider.max_value = global.inv_molasses
		maximumqty.text = str(global.inv_molasses)
		global.invc_molasses = slider.value
		quantity.text = "quantity: " + str(global.invc_molasses) + "g"
	if global.slider_selec == 39:
		slider.max_value = global.inv_rahat
		maximumqty.text = str(global.inv_rahat)
		global.invc_rahat = slider.value
		quantity.text = "quantity: " + str(global.invc_rahat) + "g"
	if global.slider_selec == 40:
		slider.max_value = global.inv_vinegar
		maximumqty.text = str(global.inv_vinegar)
		global.invc_vinegar = slider.value
		quantity.text = "quantity: " + str(global.invc_vinegar) + "ml"
	if global.slider_selec == 41:
		slider.max_value = global.inv_reddye
		maximumqty.text = str(global.inv_reddye)
		global.invc_reddye = slider.value
		quantity.text = "quantity: " + str(global.invc_reddye) + "ml"

	#change of scene to the actual cooking part when all ingredients have been selected
	if progress == global.progress_total:
		$"../proceed_b".visible = true

func _on_proceed_pressed() -> void:
	self.visible = false
	if global.slider_selec == 1:
		if global.invc_flour >= global.invcn_flour and global.invcn_flour >= 0:
			global.inv_flour -= global.invc_flour
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 2:
		if global.invc_wsugar >= global.invcn_wsugar and global.invcn_wsugar >= 0:
			global.inv_wsugar -= global.invc_wsugar
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 3:
		if global.invc_bsugar >= global.invcn_bsugar and global.invcn_bsugar >= 0:
			global.inv_bsugar -= global.invc_bsugar
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 4:
		if global.invc_butter >= global.invcn_butter and global.invcn_butter >= 0:
			global.inv_butter -= global.invc_butter
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 5:
		if global.invc_cinnamonp >= global.invcn_cinnamonp and global.invcn_cinnamonp >= 0:
			global.inv_cinnamonp -= global.invc_cinnamonp
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 6:
		if global.invc_milk >= global.invcn_milk and global.invcn_milk >= 0:
			global.inv_milk -= global.invc_milk
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 7:
		if global.invc_eggs >= global.invcn_eggs and global.invcn_eggs >= 0:
			global.inv_eggs -= global.invc_eggs
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 8:
		if global.invc_yeast >= global.invcn_yeast and global.invcn_yeast >= 0:
			global.inv_yeast -= global.invc_yeast
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 9:
		if global.invc_salt >= global.invcn_salt and global.invcn_salt >= 0:
			global.inv_salt = global.invc_salt
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 10:
		if global.invc_creamcheese >= global.invcn_creamcheese and global.invcn_creamcheese >= 0:
			global.inv_creamcheese -= global.invc_creamcheese
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 11:
		if global.invc_vanilla >= global.invcn_vanilla and global.invcn_vanilla >= 0:
			global.inv_vanilla -= global.invc_vanilla
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 12:
		if global.invc_cocoa >= global.invcn_cocoa and global.invcn_cocoa >= 0:
			global.inv_cocoa -= global.invc_cocoa
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 13:
		if global.invc_hwhipcream >= global.invcn_hwhipcream and global.invcn_hwhipcream >= 0:
			global.inv_hwhipcream -= global.invc_hwhipcream
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 14:
		if global.invc_oil >= global.invcn_oil and global.invcn_oil >= 0:
			global.inv_oil -= global.invc_oil
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 15:
		if global.invc_water >= global.invcn_water and global.invcn_water >= 0:
			global.inv_water -= global.inv_oil
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop firs!")
	if global.slider_selec == 16:
		if global.invc_cowcheese >= global.invcn_cowcheese and global.invcn_cowcheese >= 0:
			global.inv_cowcheese -= global.invc_cowcheese
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 17:
		if global.invc_lemon >= global.invcn_lemon and global.invcn_lemon >= 0:
			global.inv_lemon -= global.invc_lemon
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 18:
		if global.invc_sourcream >= global.invcn_sourcream and global.invcn_sourcream >= 0:
			global.inv_sourcream -= global.invc_sourcream
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 19:
		if global.invc_jam >= global.invcn_jam and global.invcn_jam >= 0:
			global.inv_jam -= global.invc_jam
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 20:
		if global.invc_banana >= global.invcn_banana and global.invcn_banana >= 0:
			global.inv_banana -= global.invc_banana
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 21:
		if global.invc_chocolate >= global.invcn_chocolate and global.invcn_chocolate >= 0:
			global.inv_chocolate -= global.invc_chocolate
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 22:
		if global.invc_nutmeg >= global.invcn_nutmeg and global.invcn_nutmeg >=0 :
			global.inv_nutmeg -= global.invc_nutmeg
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 23:
		if global.invc_agaves >= global.invcn_agaves and global.invcn_agaves >= 0:
			global.inv_agaves -= global.invc_agaves
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 24:
		if global.invc_mascarpone >= global.invcn_mascarpone and global.invcn_mascarpone >= 0:
			global.inv_mascarpone -= global.invc_mascarpone
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 25:
		if global.invc_espresso >= global.invcn_espresso and global.invcn_espresso >= 0:
			global.inv_espresso -= global.invc_espresso
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 26:
		if global.invc_ladyfingers >= global.invcn_ladyfingers and global.invcn_ladyfingers >= 0:
			global.inv_ladyfingers -= global.invc_ladyfingers
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 27:
		if global.invc_biscuits >= global.invcn_biscuits and global.invcn_biscuits >= 0:
			global.inv_biscuits -= global.invcn_biscutis
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 28:
		if global.invc_gelatine >= global.invcn_gelatine and global.invcn_gelatine >= 0:
			global.inv_gelatine -= global.invc_gelatine
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 29:
		if global.invc_fruits >= global.invcn_fruits and global.invcn_fruits >= 0:
			global.inv_fruits -= global.invc_fruits
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 30:
		if global.invc_bread >= global.invcn_bread and global.invcn_bread >= 0:
			global.inv_bread -= global.invc_bread
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 31:
		if global.invc_walnuts >= global.invcn_walnuts and global.invcn_walnuts >= 0:
			global.inv_walnuts -= global.invc_walnuts
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 32:
		if global.invc_applesauce >= global.invcn_applesauce and global.invcn_applesauce >= 0:
			global.inv_applesauce -= global.invc_applesauce
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 33:
		if global.invc_ginger >= global.invcn_ginger and global.invcn_ginger >= 0:
			global.inv_ginger -= global.invc_ginger
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 34:
		if global.invc_carrots >= global.invcn_carrots and global.invcn_carrots >= 0:
			global.inv_carrots -= global.invc_carrots
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 35:
		if global.invc_raisins >= global.invcn_raisins and global.invcn_raisins >= 0:
			global.inv_raisins -= global.invc_raisins
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 36:
		if global.invc_coconut >= global.invcn_coconut and global.invcn_coconut >= 0:
			global.inv_coconut -= global.invc_coconut
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 37:
		if global.invc_rumessence >= global.invcn_rumessence and global.invcn_rumessence >= 0:
			global.inv_rumessence -= global.invc_rumessence
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 38:
		if global.invc_molasses >= global.invcn_molasses and global.invcn_molasses >= 0:
			global.inv_molasses -= global.invc_molasses
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 39:
		if global.invc_rahat >= global.invcn_rahat and global.invcn_rahat >= 0:
			global.inv_rahat -= global.invc_rahat
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")
	if global.slider_selec == 40:
		if global.invc_vinegar >= global.invcn_vinegar and global.invcn_vinegar >= 0:
			global.inv_vinegar -= global.invc_vinegar
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to sleep first!")
	if global.slider_selec == 41:
		if global.invc_reddye >= global.invcn_reddye and global.invcn_reddye >= 0:
			global.inv_reddye -= global.invc_reddye
			slider.value = 0
			progress += 1
		else:
			print("You don't have enough, go to shop first!")

func _on_back_pressed() -> void:
	self.visible = false
	slider.value = 0
