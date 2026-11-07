extends Node2D

#sper ca o sa imi amintesc ca comentariul asta este aici

#pentru a putea face alocarea pozitiilor trebuie ca ingredientele sa stie in ce ordine sunt la fiecare 
#reteta, pentru ca la momentul actual isi atribuie pozitia bazat pe ordinea lor din tree
#idk cum as putea face asta, poate sa fac o functie separata pentru assign in interiorul codului fiecarui
#sprite in parte si sa le apelez aici in ordinea in care apar pt fiecare reteta in parte

#acum ca asta merge trebuie sa il fac cumva sa isi dea reset de fiecare data cand se schimba scena
#ca sa fie cel mai usor ar fi sa fac sa fie o scena diferita nu doar cand treci la scena cu bucataria gen
#frigider si cuptor, ci si cand intri in tranzitia de amestecta -> sa se faca un zoom in pe bol
#///sau stii ceva doar am sa il fac manual pt ca e prea greu sa ma gandesc la un algoritm

func _ready() -> void:
	global.progress_c = 1
	assign_poz()
	print("marker 2 position is:")
	print($mpoz2.position)

func _process(delta: float) -> void:
	$VBoxContainer.milk_strike()
	$VBoxContainer.sugar_strike()
	$VBoxContainer.yeast_strike()
	$VBoxContainer.egg_strike()
	$VBoxContainer.vanilla_strike()
	$VBoxContainer.flour_strike()
	$VBoxContainer.salt_strike()
	$VBoxContainer.butter_strike()

func reset() -> void:
	global.mpoz.fill(false)

func assign_poz() -> void:
	if global.dish_selection == 1:
		$milk.pos_assign()
		$wsugar.pos_assign()
		$yeast.pos_assign()
		#trebuie aici resetat vectorul, nu k
		reset()
		$egg.pos_assign()
		$vanilla.pos_assign()
		$flour.pos_assign()
		reset()
		$butter.pos_assign()
		
