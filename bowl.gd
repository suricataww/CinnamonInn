extends AnimatedSprite2D
@onready var area2d: Area2D = $Area2D
var permis: bool = false
var gata: bool = false

func _ready() -> void:
	area2d.input_pickable = true
	area2d.area_entered.connect(ing_entered)
	area2d.input_event.connect(pressed)
	add_to_group("bowl")

func _process(delta: float) -> void:
	#aici again va trebui sa fie facuta pentru fiecare dish in parte o diferenta in functie de reteta
	if global.progress_c == 4 or global.progress_c == 8 or global.progress_c == 10:
		permis = true
	else:
		permis = false
	if global.progress_c == 11: 
		#asta e fals la reteta adevarata dar il las asa saptamana asta pt ca n-am timp sa scriu cod suficient
		gata = true

func ing_entered(area = Area2D) -> void:
	if get_tree().has_group("milk"):
		frame = 1
	#if get_tree().has_group("wsugar"):
		#frame = 1
	#if get_tree().has_group("yeast"):
		#frame = 3

#aici poate as putea sa fac spre exemplu o functie pt kneading, alta pt altceva si tot asa si dupa doar sa le
#apelez atunci cand am nevoie de ele, dar 
func pressed(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if permis == true:
			#play kneading animation
			print("HELLO")
			global.progress_c += 1
		if gata == true:
			frame = 2 #adica gogosi
			print("gata!")
