extends Node

onready var target_scene = preload("res://Scenes/Target.tscn")
onready var unit_manager = $"../UnitManager"

func _ready():
	pass

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_leftclick"):
		if get_child(0):
			get_child(0).queue_free()
			var target = target_scene.instance()
			target.set_position(get_viewport().get_mouse_position())
			add_child(target)
			unit_manager.set_behaviour_all("seek", target.get_position())
		else:
			var target = target_scene.instance()
			target.set_position(get_viewport().get_mouse_position())
			add_child(target)
			unit_manager.set_behaviour_all("seek", target.get_position())
		pass