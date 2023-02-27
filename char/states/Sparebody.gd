extends DefaultFireball


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vsp = 0
var grav = 0.5

func _frame_0():
	host.set_facing(host.objs_map[host.creator_name].get_facing_int())

func _tick():
	host.sprite.get_material().set_shader_param("color", host.objs_map[host.creator_name].get_node("Flip").get_node("Sprite").get_material().get_shader_param("color"))
	host.set_grounded(false)
	vsp += grav
	host.sprite.offset.y = ((current_tick * current_tick) * grav) / 2 # literally freefall formula
	if current_tick >= lifetime:
		fizzle()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
