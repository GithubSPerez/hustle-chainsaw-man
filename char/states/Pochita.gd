extends CharacterState

func parPoof():
	spawn_particle_relative(preload("res://fx/FlawedParryEffect.tscn"), host.hurtbox_pos_relative_float())
func _tick():
	spawn_particle_relative(preload("res://chainsaw/char/FX/Blood.tscn"), host.hurtbox_pos_relative_float())
	host.apply_grav()
	host.apply_forces_no_limit()
	if current_tick > 1 and host.is_grounded():
		parPoof()
		return "Landing"

#func on_got_hit():
	#parPoof()
