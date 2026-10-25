extends Node

#general
var dish_selection = 1 #ar trb sa fie 0 in mod normal
var current_step = 0
var display_selection = 0
var price = 0
var money = 10
var progress_total = 0   #numarul total de pasi de care ai nevoie pentru a termina dish-ul
var progress_c = 1       #pasul de la gatit

#inventory for ingredients
var inv_flour = 0
var inv_wsugar = 0
var inv_bsugar = 0
var inv_butter = 0
var inv_cinnamonp = 0
var inv_milk = 0
var inv_eggs = 0
var inv_yeast = 0
var inv_salt = 0
var inv_creamcheese = 0
var inv_vanilla = 0
var inv_cocoa = 0
var inv_hwhipcream = 0
var inv_oil = 0
var inv_water = 0
var inv_cowcheese = 0
var inv_lemon = 0
var inv_sourcream = 0
var inv_jam = 0
var inv_banana = 0

#inventory for ingredients while cooking
var invc_flour = 0
var invc_wsugar = 0
var invc_bsugar = 0
var invc_butter = 0
var invc_cinnamonp = 0
var invc_milk = 0
var invc_eggs = 0
var invc_yeast = 0
var invc_salt = 0
var invc_creamcheese = 0
var invc_vanilla = 0
var invc_cocoa = 0
var invc_hwhipcream = 0
var invc_oil = 0
var invc_water = 0
var invc_cowcheese = 0
var invc_lemon = 0
var invc_sourcream = 0
var invc_jam = 0
var invc_banana = 0

#inventory for dishes
var inv_treat1 = 12  #de schimbat in cinnamonroll

#slider selection signal
var slider_selec = 0

func _process(delta: float) -> void:
	print(global.progress_c)
	await get_tree().create_timer(1).timeout
