extends ParticleEffect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func restart():
	for child in get_children():
		if child is CPUParticles2D or child is Particles2D:
			child.restart()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
