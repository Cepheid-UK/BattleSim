extends Node

var unit_scene = preload("res://Scenes/Unit.tscn")

func _ready():
	for i in range(5):
		var unit = unit_scene.instance()
		unit.set_position(Vector2(32 + i*32, 64))
		add_child(unit)
	pass

func set_behaviour_all(behaviour, target = null):
	# sets behaviour for all units
	var units = get_children()
	
	for unit in units:
		unit.set_behaviour(behaviour, target)
	pass