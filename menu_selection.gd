extends Control

func _on_bakery_pressed() -> void:
	get_tree().change_scene_to_file("res://bakery.tscn")

func _on_kitchen_pressed() -> void:
	get_tree().change_scene_to_file("res://kitchentable.tscn")
	#aici trb sa fie recipebook, dar pentru a testa partea de gaitit il bag asa

func _on_shop_pressed() -> void:
	get_tree().change_scene_to_file("res://shop.tscn") 
