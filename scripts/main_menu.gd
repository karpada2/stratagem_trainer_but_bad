extends Control
class_name MainMenu

signal play
signal keybinds

func _ready() -> void:
	$VBoxContainer/Play.pressed.connect(play.emit)
	$VBoxContainer/Keybinds.pressed.connect(keybinds.emit)
	$VBoxContainer/Quit.pressed.connect(get_tree().quit)
