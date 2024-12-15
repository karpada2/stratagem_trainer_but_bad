extends Node2D


var strat: Array = stratagems.eagles.get("eagle 500kg bomb")
var curr_index: int = 0

var up: String = "↑"
var down: String = "↓"
var left: String = "←"
var right: String = "→"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var out: String = ""
	for i: String in strat:
		if i == "stratagem_up":
			out += up
		elif i == "stratagem_down":
			out += down
		elif i == "stratagem_left":
			out += left
		elif i == "stratagem_right":
			out += right
	
	print(out)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	while curr_index < strat.size():
		if Input.is_action_just_pressed(strat[curr_index]):
			curr_index += 1
	print("Whoo you done did it :)")
	
