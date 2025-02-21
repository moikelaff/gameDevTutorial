extends CharacterBody2D

# Speed in pixels per second
@export var speed: float = 200.0

func _physics_process(delta: float) -> void:
	# Grab the input from the default ‘ui_...’ actions
	var input_vector = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down")  - Input.get_action_strength("ui_up")
	)

	# If using custom actions, you can do:
	# var input_vector = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	# Normalize so diagonal movement isn’t faster
	if input_vector.length() > 1:
		input_vector = input_vector.normalized()

	# Multiply by speed
	velocity = input_vector * speed

	# Move the body while respecting collisions
	move_and_slide()
