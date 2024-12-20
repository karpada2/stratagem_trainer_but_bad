extends Label
class_name KeybindsMenu

signal finished_rebind

var inputs_to_set: Array[String] = [inputs.UP, inputs.DOWN, inputs.LEFT, inputs.RIGHT]
var index: int = 0
var last_frame_pressed: String

func _ready() -> void:
	self.text = "set input for\n" + inputs_to_set[index].trim_prefix("stratagem_") + " button:"

func _input(event: InputEvent) -> void:
	if event.is_pressed() and not event.is_action_pressed("ui_cancel") and event is not InputEventMouseMotion:
		accept_event()
		InputMap.action_erase_events(inputs_to_set[index])
		InputMap.action_add_event(inputs_to_set[index], event)
		index += 1
		if index >= inputs_to_set.size():
			finished_rebind.emit()
			index = 0
		else:
			self.text = "set input for\n" + inputs_to_set[index].trim_prefix("stratagem_") + " button:"
