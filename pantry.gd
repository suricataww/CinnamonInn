extends Node2D
@onready var flour: Area2D = $flour/Area2D
@onready var wsugar: Area2D = $wsugar/Area2D
@onready var bsugar: Area2D = $bsugar/Area2D
@onready var butter: Area2D = $butter/Area2D
@onready var cinnamonp: Area2D = $cinnamonp/Area2D
@onready var milk: Area2D = $milk/Area2D
@onready var eggs: Area2D = $eggs/Area2D
@onready var yeast: Area2D = $yeast/Area2D
@onready var salt: Area2D = $salt/Area2D
@onready var creamcheese: Area2D = $creamcheese/Area2D
@onready var vanilla: Area2D = $vanilla/Area2D
@onready var cocoa: Area2D = $coca/Area2D
@onready var hwhipcream: Area2D = $hwhipcream/Area2D
@onready var oil: Area2D = $oil/Area2D
@onready var water: Area2D = $water/Area2D
@onready var cowcheese: Area2D = $cowcheese/Area2D
@onready var lemon: Area2D = $lemon/Area2D
@onready var sourcream: Area2D = $sourcream/Area2D
@onready var jam: Area2D = $jam/Area2D
@onready var banana: Area2D = $banana/Area2D
@onready var chocolate: Area2D = $chocolate/Area2D
@onready var nutmeg: Area2D = $nutmeg/Area2D
@onready var agaves: Area2D = $agaves/Area2D
@onready var mascarpone: Area2D = $mascarpone/Area2D
@onready var espresso: Area2D = $espresso/Area2D
@onready var ladyfingers: Area2D = $ladyfingers/Area2D
@onready var biscuits: Area2D = $biscuits/Area2D
@onready var gelatine: Area2D = $gelatine/Area2D
@onready var fruits: Area2D = $fruits/Area2D
@onready var bread: Area2D = $bread/Area2D
@onready var walnuts: Area2D = $walnuts/Area2D
@onready var applesauce: Area2D = $applesauce/Area2D
@onready var ginger: Area2D = $ginger/Area2D
@onready var carrots: Area2D = $carrots/Area2D
@onready var raisins: Area2D = $raisins/Area2D
@onready var coconut: Area2D = $coconut/Area2D
@onready var rumessence: Area2D = $rumessence/Area2D
@onready var molasses: Area2D = $molasses/Area2D
@onready var rahat: Area2D = $rahat/Area2D
@onready var vinegar: Area2D = $vinegar/Area2D
@onready var reddye: Area2D = $reddye/Area2D

func _ready() -> void:
	if global.dish_selection == 1: #doughnuts
		global.progress_total = 19
		#declararea necesarului minim pt fiecare reteta
		global.invcn_flour = 525
		global.invcn_wsugar = 70
		global.invcn_butter = 60
		global.invcn_milk = 300
		global.invcn_eggs = 1
		global.invcn_yeast = 7
		global.invcn_salt = 4
		global.invcn_oil = 200
		#aici trb sa adaug in plus pasi pt partile de amestecat/bagat la cuptor/firigder, etc.
		#la doughnuts ce am zis sus am luat in considerare, la restul inca nu
	if global.dish_selection == 2:
		global.progress_total = 9
	if global.dish_selection == 3:
		global.progress_total = 11
	if global.dish_selection == 4:
		global.progress_total = 10 #aici am numarat si smantana si gemul, poate ar trb sa le pun la decorat separat
	#to be continued with the others cand aleg o ordine finala
	#conectarile pentru functii:
	flour.input_event.connect(flour_pressed)
	wsugar.iput_event.connect(wsugar_pressed)
	bsugar.input_event.connect(bsugar_pressed)
	butter.input_event.connect(butter_pressed)
	cinnamonp.input_event.connect(cinnamonp_pressed)
	milk.input_event.connect(milk_pressed)
	eggs.input_event.connect(eggs_pressed)
	yeast.input_event.connect(yeast_pressed)
	salt.input_event.connect(salt_pressed)
	creamcheese.input_event.connect(creamcheese_pressed)
	vanilla.input_event.connect(vanilla_pressed)
	cocoa.input_event.connect(cocoa_pressed)
	hwhipcream.input_event.connect(hwhipcream_pressed)
	oil.input_event.connect(oil_pressed)
	water.input_event.connect(water_pressed)
	cowcheese.input_event.connect(cowcheese_pressed)
	lemon.input_event.connect(lemon_pressed)
	sourcream.input_event.connect(sourcream_pressed)
	jam.input_event.connect(jam_pressed)
	banana.input_event.connect(banana_pressed)
	chocolate.input_event.connect(chocolate_pressed)
	nutmeg.input_event.connect(nutmeg_pressed)
	agaves.input_event.connect(agaves_pressed)
	mascarpone.input_event.connect(mascarpone_pressed)
	espresso.input_event.connect(espresso_pressed)
	ladyfingers.input_event.connect(ladyfingers_pressed)
	biscuits.input_event.connect(biscuits_pressed)
	gelatine.input_event.connect(gelatine_pressed)
	fruits.input_event.connect(fruits_pressed)
	bread.input_event.connect(bread_pressed)
	walnuts.input_event.connect(walnuts_pressed)
	applesauce.input_event.connect(applesauce_pressed)
	ginger.input_event.connect(ginger_pressed)
	carrots.input_event.connect(carrots_pressed)
	raisins.input_event.connect(raisins_pressed)
	coconut.input_event.connect(coconut_pressed)
	rumessence.input_event.connect(rumessence_pressed)
	molasses.input_event.connect(molasses_pressed)
	rahat.imput_event.connect(rahat_pressed)
	vinegar.input_event.connect(vinegar_pressed)
	reddye.input_event.connect(reddye_pressed)

func _process(delta: float) -> void:
	pass

func flour_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		$slider.visible = true
		global.slider_selec = 1
func wsugar_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 2
		$slider.visible = true
func bsugar_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 3
		$slider.visible - true
func butter_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 4
		$slider.visible = true
func cinnamonp_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 5
		$slider.visible = true
func milk_pressed(viewpor: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_elec = 6
		$slider.visible = true
func eggs_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 7
		$slider.visible = true
func yeast_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 8
		$slider.visible = true
func salt_pressed(viewport:Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 9
		$slider.visible = true
func creamcheese_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 10
		$slider.visible = true
func vanilla_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 11
		$slider.visible = true
func cocoa_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 12
		$slider.visible = true
func hwhipcream_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 13
		$slider.visible = true
func oil_pressed(viewport: Node, event: InputEvent , shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 14
		$slider.visible = true
func water_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 15
		$slider.visible = true
func cowcheese_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 16
		$slider.visible = true
func lemon_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 17
		$slider.visible = true
func sourcream_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 18
		$slider.visible = true
func jam_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 19
		$slider.visible = true
func banana_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 20
		$slider.visible = true
func chocolate_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 21
		$slider.visible = true
func nutmeg_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 22
		$slider.visible = true
func agaves_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 23
		$slider.visible = true
func mascarpone_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 24
		$slider.visible = true
func espresso_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 25
		$slider.visible = true
func ladyfingers_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 26
		$slider.visible = true
func biscuits_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 27
		$slider.visible = true
func gelatine_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 28
		$slider.visible = true
func fruits_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 29
		$slider.visible = true
func bread_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 30
		$slider.visible = true
func walnuts_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 31
		$slider.visible = true
func applesauce_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 32
		$slider.visible = true
func ginger_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 33
		$slider.visible = true
func carrots_pressed(viewport: Node, event: InputEvent, shpe_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 34
		$slider.visible = true
func raisins_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 35
		$slider.visible = true
func coconut_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 36
		$slider.visible = true
func rumessence_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 37
		$slider.visible = true
func molasses_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 38
		$slider.visible = true
func rahat_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 39
		$slider.visible = true
func vinegar_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 40
		$slider.visible = true
func reddye_pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		global.slider_selec = 41
		$slider.visible = true

func _on_proceed_b_pressed() -> void:
	get_tree().change_scene_to_file("res://kitchentable.tscn")
