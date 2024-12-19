extends Control
class_name InputDirection

@onready var textures: Dictionary = {
	inputs.UP : preload("res://assets/sprites/arrow_up.png"),
	inputs.DOWN : preload("res://assets/sprites/arrow_down.png"),
	inputs.LEFT : preload("res://assets/sprites/arrow_left.png"),
	inputs.RIGHT : preload("res://assets/sprites/arrow_right.png")
}
@onready var colors: Dictionary = {
	"normal" : preload("res://assets/materials/input_direction_normal.tres"),
	"yellow" : preload("res://assets/materials/input_direction_yellow.tres"),
	"red" : preload("res://assets/materials/input_direction_red.tres")
}

@onready var texture: TextureRect = $TextureRect

var _current_color: String:
	set(new_value):
		if new_value in colors.keys():
			_current_color = new_value

var _current_texture: String:
	set(new_value):
		if new_value in textures.keys():
			_current_texture = new_value

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_texture(inputs.UP)
	set_color("normal")

func set_texture(texture_name: String) -> void:
	_current_texture = texture_name
	texture.texture = textures[_current_texture]

func set_color(color_name: String) -> void:
	_current_color = color_name
	texture.material = colors[_current_color]