extends CharacterState


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _frame_0():
	host.set_vel(host.get_vel().x, "0")
	
func _tick():
	if current_tick >= 10:
		host.apply_grav()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
