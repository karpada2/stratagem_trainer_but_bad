extends Node2D


var strat: String = "eagle 500kg bomb"
@onready var stratagem: Stratagem = $Stratagem

var hasFailed: bool = false

func _ready() -> void:
	stratagem.success.connect(_stratagem_success)
	stratagem.failure.connect(_stratagem_failure)
	stratagem.set_stratagem(strat)

func _process(_delta: float) -> void:
	if not hasFailed:
		if Input.is_action_just_pressed(inputs.UP):
			stratagem.set_input(inputs.UP)
		elif Input.is_action_just_pressed(inputs.DOWN):
			stratagem.set_input(inputs.DOWN)
		elif Input.is_action_just_pressed(inputs.RIGHT):
			stratagem.set_input(inputs.RIGHT)
		elif Input.is_action_just_pressed(inputs.LEFT):
			stratagem.set_input(inputs.LEFT)

func _stratagem_success() -> void:
	print("YOU NO SUCK :D")
	get_tree().quit()

func _stratagem_failure() -> void:
	hasFailed = true
	await get_tree().create_timer(0.5).timeout
	hasFailed = false
	stratagem.set_stratagem(strat)
