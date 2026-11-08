
#va trebui atunci cand am analiza completa la toate retetele sa fac un sistem prin care daca tu trb sa bagi ceva
#la frigider sa nu poti sa il bagi la cuptor

#va trebui sa imi mut ideea asta in docs, sper ca o sa o mai gasesc ulterior

extends Node2D
@onready var space: Area2D = $Area2D
@onready var timer: AnimatedSprite2D = $timer
@onready var label: Label = $Label
var timp = 3
var necesity: bool = false

func _ready() -> void:
	space.area_entered.connect(space_entered)
	timer.modulate.a = 0
	label.visible = 1
	label.text = "Put it in the fridge!"
	if global.dish_selection == 3: 
		necesity = true
	#la retetele mai complicate care au spre exemplu nevoie si de oven si de stove o sa se ia in considerare
	#si pasul din procesul de gatire sa fie cel corect

func _process(delta: float) -> void:
	print(global.timer_prog)

func space_entered(area: Area2D) -> void:
	#ceva ca sa se duca obiectul din mana la pozitia din frigider
	if necesity == true:
		global.timer_prog = true
		label.visible = false
		timer.modulate.a = 1
		while timp: #se repeta de atatea ori cat timp, si 1 timp = 1 ora
			timer.frame = 1 # 1/4
			await get_tree().create_timer(0.3).timeout
			timer.frame = 2 # 2/4
			await get_tree().create_timer(0.3).timeout
			timer.frame = 3 # 3/4
			await get_tree().create_timer(0.3).timeout
			timer.frame = 4 # 4/4
			timp -= 1
		timer.modulate.a = 0
		label.text = "Take it out!"
		label.visible = true
		global.timer_prog = false
	else:
		print("You don't need this for the recipe!")
