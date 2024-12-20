extends Control
class_name Stratagem

signal success
signal failure

const arrow: PackedScene = preload("res://scenes/input_direction.tscn")
var curr_stratagem_inputs: Array[String]
var arrow_children: Array[InputDirection]

var curr_input_index: int = 0

@onready var directions_container: HBoxContainer = $CenterContainer/HBoxContainer/InputDirections
@onready var stratagem_label: Label = $stratagem_name

var dict_names: Array[String] = [
	"sentries",
	"support_weapons",
	"backpacks",
	"orbitals",
	"eagles",
	"exosuits",
	"misc"
]


var _stratagem_class: String
var stratagem_name: String:
	set(new_value):
		for i: String in dict_names:
			if stratagems.get_dictionary_by_name(i) != {} and stratagems.get_dictionary_by_name(i).has(new_value):
				stratagem_name = new_value
				_stratagem_class = i


func set_stratagem(stratagem: String) -> void:
	self.stratagem_name = stratagem
	stratagem_label.text = stratagem_names.get_dictionary_by_name(_stratagem_class).get(stratagem_name)
	
	for i: InputDirection in directions_container.get_children():
		i.free()
	arrow_children.clear()
	curr_input_index = 0
	
	var inputs_temp: Array[String]
	for i: String in stratagems.get_dictionary_by_name(_stratagem_class).get(stratagem_name):
		inputs_temp.append(i)
	
	curr_stratagem_inputs = inputs_temp
	
	for i: String in curr_stratagem_inputs:
		var new_arrow: InputDirection = arrow.instantiate()
		arrow_children.append(new_arrow)
		directions_container.call_deferred("add_child", new_arrow)
		new_arrow.call_deferred("set_texture", i)
	
	var icon: StratagemIcon = $CenterContainer/HBoxContainer/StratagemIcon
	icon.set_icon(stratagem_icons.get_dictionary_by_name(_stratagem_class).get(stratagem_name))

func set_input(direction: String) -> void:
	if direction == curr_stratagem_inputs[self.curr_input_index]:
		arrow_children[self.curr_input_index].set_color("yellow")
		curr_input_index += 1
		if curr_input_index == curr_stratagem_inputs.size():
			success.emit()
	else:
		for i: InputDirection in arrow_children:
			i.set_color("red")
		failure.emit()
