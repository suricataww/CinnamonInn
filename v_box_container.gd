extends VBoxContainer
#fac asta doar pt varianta doar cu doughnuts pt ca la jocul real o sa am chestia asta intr-o carte cred?
@onready var milk: ProgressBar = $Label/MarginContainer/ProgressBar
@onready var wsugar: ProgressBar = $Label2/MarginContainer/ProgressBar
@onready var yeast: ProgressBar = $Label3/MarginContainer/ProgressBar
@onready var egg: ProgressBar = $Label4/MarginContainer/ProgressBar
@onready var vanilla: ProgressBar = $Label5/MarginContainer/ProgressBar
@onready var flour: ProgressBar = $Label6/MarginContainer/ProgressBar
@onready var salt: ProgressBar = $Label7/MarginContainer/ProgressBar
@onready var butter: ProgressBar = $Label9/MarginContainer/ProgressBar
#idk actually daca ce e in jos de asta e relevant pt ca nu m-am decis la ce sistem de tracking la ce pas esti
#o sa folosesc in versiunea finala
@onready var bsugar: ProgressBar = $Label #idfk ce label tho ca n-are
@onready var creamcheese: ProgressBar = $Label
@onready var cinnamonp: ProgressBar = $Label
@onready var cocoa: ProgressBar = $Label
@onready var hwhipcream: ProgressBar = $Label

func _ready() -> void:
	milk.value = 0
	wsugar.value = 0
	yeast.value = 0
	egg.value = 0
	vanilla.value = 0
	flour.value = 0
	salt.value = 0
	butter.value = 0

func milk_strike(apply: bool = true) -> void:
	if global.progress_c == 2:
		var strike_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		strike_tween.tween_property($Label/MarginContainer/ProgressBar, "value", 100.0 if apply else 0.0, 0.2)

func wsugar_strike(apply: bool = true) -> void:
	if global.progress_c == 3:
		var strike_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		strike_tween.tween_property($Label2/MarginContainer/ProgressBar, "value", 100.0 if apply else 0.0, 0.2)

func yeast_strike(apply: bool = true) -> void:
	if global.progress_c == 4:
		var strike_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		strike_tween.tween_property($Label3/MarginContainer/ProgressBar, "value", 100.0 if apply else 0.0, 0.2)

func egg_strike(apply: bool = true) -> void:
	if global.progress_c == 5:
		var strike_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		strike_tween.tween_property($Label4/MarginContainer/ProgressBar, "value", 100.0 if apply else 0.0, 0.2)

func vanilla_strike(apply: bool = true) -> void:
	if global.progress_c == 6:
		var strike_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		strike_tween.tween_property($Label5/MarginContainer/ProgressBar, "value", 100.0 if apply else 0.0, 0.2)

func flour_strike(apply: bool = true) -> void:
	if global.progress_c == 7:
		var strike_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		strike_tween.tween_property($Label6/MarginContainer/ProgressBar, "value", 100.0 if apply else 0.0, 0.2)

func salt_strike(apply: bool = true) -> void:
	if global.progress_c == 8:
		var strike_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		strike_tween.tween_property($Label7/MarginContainer/ProgressBar, "value", 100.0 if apply else 0.0, 0.2)

func butter_strike(apply: bool = true) -> void:
	if global.progress_c == 10:
		var strike_tween: Tween = create_tween().set_trans(Tween.TRANS_SINE)
		strike_tween.tween_property($Label9/MarginContainer/ProgressBar, "value", 100.0 if apply else 0.0, 0.2)
