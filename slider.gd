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
	
	#change of scene to the actual cooking part when all ingredients have been selected
	if progress == global.progress_total:
		$"../proceed_b".visible = true

func _on_proceed_pressed() -> void:
	#in if-urile astea ar mai trebui niste verificari cu daca ai suficent pt reteta cand selectezi
	#sau doar ar trb sa schimb jocul as a whole si sa sar peste partea asta de selectie?
	
	#aici ar mai trebui undeva sa se trimita niste variabile/semnale ca sa monitorizam progresul de selectie
	#adica cate itemuri mai ai de luat de pe raft pentru a putea sa faci reteta
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

func _on_back_pressed() -> void:
	self.visible = false
	slider.value = 0
