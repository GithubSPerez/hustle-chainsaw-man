extends SuperMove


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _frame_0():
	host.set_grounded(false)

func _frame_3():
	host.apply_force(str(10 * host.get_facing_int()), "-4")
	
func _tick():
	if (current_tick > 4 and host.is_grounded()):
		return "Landing"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
