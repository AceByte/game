extends Node3D

const SPEED := 3.0

func _physics_process(delta):
	var dir := Vector3.ZERO

	if Input.is_action_pressed("ui_up"):
		dir.y += 1
	if Input.is_action_pressed("ui_down"):
		dir.y -= 1
	if Input.is_action_pressed("ui_left"):
		dir.x -= 1
	if Input.is_action_pressed("ui_right"):
		dir.x += 1

	if dir != Vector3.ZERO:
		dir = dir.normalized() * SPEED
		translate(dir * delta)
