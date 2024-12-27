extends Node2D


var strat: String

@onready var main_menu: MainMenu = $MainMenu
@onready var stratagem: Stratagem = $Stratagem
@onready var keybinds_menu: KeybindsMenu = $KeybindsMenu

var hasFailed: bool = false
var hasSuccessed: bool = false
var stratagems_stack: Array[String]

func _ready() -> void:
	main_menu.play.connect(_switch_to_stratagem)
	main_menu.keybinds.connect(_switch_to_keybind)
	stratagem.success.connect(_stratagem_success)
	stratagem.failure.connect(_stratagem_failure)
	keybinds_menu.finished_rebind.connect(_switch_to_main_menu)

func _process(_delta: float) -> void:
	if not hasFailed and not hasSuccessed and stratagem.visible:
		if Input.is_action_just_pressed(inputs.UP):
			stratagem.set_input(inputs.UP)
		elif Input.is_action_just_pressed(inputs.DOWN):
			stratagem.set_input(inputs.DOWN)
		elif Input.is_action_just_pressed(inputs.RIGHT):
			stratagem.set_input(inputs.RIGHT)
		elif Input.is_action_just_pressed(inputs.LEFT):
			stratagem.set_input(inputs.LEFT)
	if Input.is_action_just_pressed("ui_cancel"):
		if stratagem.visible or keybinds_menu.visible:
			_switch_to_main_menu()
		else:
			get_tree().quit()

func _stratagem_success() -> void:
	hasSuccessed = true
	await get_tree().create_timer(0.5).timeout
	hasSuccessed = false
	stratagem.set_stratagem(stratagems_stack.pop_back())
	if stratagems_stack.is_empty():
		update_stratagems_stack()

func _stratagem_failure() -> void:
	hasFailed = true
	await get_tree().create_timer(0.5).timeout
	hasFailed = false
	stratagem.set_stratagem(strat)

func _switch_to_main_menu() -> void:
	main_menu.visible = true
	main_menu.process_mode = Node.PROCESS_MODE_INHERIT
	stratagem.visible = false
	stratagem.process_mode = Node.PROCESS_MODE_DISABLED
	keybinds_menu.visible = false
	keybinds_menu.process_mode = Node.PROCESS_MODE_DISABLED

func _switch_to_stratagem() -> void:
	stratagem.process_mode = Node.PROCESS_MODE_INHERIT
	update_stratagems_stack()
	stratagem.set_stratagem(stratagems_stack.pop_back())
	stratagem.visible = true
	main_menu.visible = false
	main_menu.process_mode = Node.PROCESS_MODE_DISABLED
	keybinds_menu.visible = false
	keybinds_menu.process_mode = Node.PROCESS_MODE_DISABLED

func _switch_to_keybind() -> void:
	main_menu.visible = false
	main_menu.process_mode = Node.PROCESS_MODE_DISABLED
	stratagem.visible = false
	stratagem.process_mode = Node.PROCESS_MODE_DISABLED
	keybinds_menu.visible = true
	keybinds_menu.process_mode = Node.PROCESS_MODE_INHERIT

# returns a random stratagem name, weighted
func update_stratagems_stack() -> void:
	var all_strats: Array[String]
	for i: String in stratagems.dict_names:
		all_strats.append_array(stratagems.get_dictionary_by_name(i).keys())
	all_strats.shuffle()
	stratagems_stack = all_strats
