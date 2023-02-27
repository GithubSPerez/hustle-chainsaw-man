extends CharacterState

func is_usable():
	return .is_usable() and !host.usedUppercut
func _frame_0():
	host.reset_momentum()
	host.apply_force(str(2 * host.get_facing_int()), "0.0")

func _frame_6():
	var move_dir = xy_to_dir("1.0", "1.0")
	if data:
		move_dir = xy_to_dir(data.x, data.y)
	var move_vec = fixed.normalized_vec_times(move_dir.x, move_dir.y, "10")
	host.apply_force(fixed.div(move_vec.x, "3"), move_vec.y)
	
func _frame_8():
	host.usedUppercut = true

func _tick():
	if (current_tick > 15):
		host.apply_grav()
	host.apply_forces()
	if host.is_grounded() and current_tick > force_tick:
		return "Landing"
