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
	print(global.progress_c)

func ing_entered(area = Area2D) -> void:
	#cod de animatie specific pentru gogosi, might change this later sa il fac mai general ca n-am chef sa fac 100 
	#de desene diferite pentru fiecare stage la fiecare dish in parte
	if global.dish_selection == 1:
		if get_tree().has_group("milk"):
			frame = 0 #1
		if get_tree().has_group("wsugar"):
			frame = 0 #2
		if get_tree().has_group("yeast"):
			frame = 0 #3
		if get_tree().has_group("egg"):
			frame = 0 #4
		if get_tree().has_group("vanilla"):
			frame = 0 #5
		#actually cred ca e o idee proasta sa fac asta atat de specific pentru ca dupa trebuie sa account for 
		#framesurile din animatia de la kneading si altele posibile viitoare

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
