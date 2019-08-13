extends RigidBody2D

var behaviour
# behaviours supported:
# 'seek' - WIP
var target

func _physics_process(delta):
	print(get_rotation())
	if behaviour:
		run_behaviour()
	pass

func run_behaviour():
	if behaviour == 'seek':
		run_seek()
	pass

func set_behaviour(behave, targ = null):
	behaviour = behave
	target = targ
	pass

func unset_behaviour():
	target = null
	behaviour = null

# Behaviours

func run_seek():
	face_target()
	pass

func face_target():
	var direction : Vector2 = target - position
	var normal = direction.normalized()
	var angle = normal.get_angle()