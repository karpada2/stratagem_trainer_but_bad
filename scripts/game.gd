extends Node2D


var strat: Array = stratagems.eagles.get("eagle 500kg bomb")
var curr_index: int = 0
var isInit: bool = false


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
	if curr_index < strat.size():
		curr_index = 0
		
		if Input.is_action_just_pressed(strat[curr_index]):
			print(strat[curr_index])
			curr_index += 1
	if not isInit and curr_index >= strat.size():
		isInit = true
		print("Whoo you done did it :)")
	
