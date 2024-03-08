extends Node

signal do_thing


func _ready() -> void:
	do_thing.connect(_on_do_thing_one)
	do_thing.connect(_on_do_thing_two)


func _process(delta: float) -> void:
	# Press enter to fire action "trigger"
	if Input.is_action_just_pressed("trigger"):
		do_thing.emit()


func _on_do_thing_one() -> void:
	print("Thing one")
	do_thing.disconnect(_on_do_thing_two)


func _on_do_thing_two() -> void:
	print("Thing two")
