extends Node

enum battleStep {begin,declare,damage,next,end}
enum state {start,select,battle,end}

var bstate: int

var monsters
var turn
var events
var responders

# Called when the node enters the scene tree for the first time.
func _ready():
	bstate = state.start
	monsters = [monster.new(),monster.new()]
	turn = [move.new()]
	events = []
	responders = [move.new()]
	Step()
	pass # Replace with function body.

func Step():
	
	match (bstate):
		state.start:
			bstate = state.battle
			pass
		state.select:
			pass
		state.battle:
			events = [turn[0].execute()]
			responders[0].respond(events[0])
			pass
		state.end:
			pass
		
	pass


func _process(delta):
	if Input.is_action_just_pressed("1"):
		Step()

func getResponse():
	pass
