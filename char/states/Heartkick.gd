extends SuperMove


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func playSound(snd, vol = -8):
	var snd_player = VariableSound2D.new()
	add_child(snd_player)
	snd_player.bus = "Fx"
	snd_player.stream = load(snd)
	snd_player.volume_db = vol
	snd_player.play()

func _frame_0():
	host.set_grounded(false)

func _frame_3():
	$"%HeartTear".start_emitting()
	$"%HeartTear".restart()
	#heartTear = spawn_particle_relative(preload("res://chainsaw/char/FX/HeartTear.tscn"), host.hurtbox_pos_relative_float())

func _frame_8():
	playSound("res://sound/common/whiff1.wav", 0)
func _frame_15():
	playSound("res://sound/common/slash3.wav")
func _frame_17():
	host.apply_force(fixed.div(str(data.x), "4"), fixed.div(str(data.y), "4"))
	
func _tick():
	host.apply_forces_no_limit()
	if current_tick >= 17:
		return "Pochita"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
