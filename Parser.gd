extends Node
class_name Parser

var state: int = 0
var roomtest

var ATTACKER
var DEFENDER

func _ready():
	ATTACKER = monster.new()
	DEFENDER = monster.new()
	
	roomtest = room.new(1)
	print(roomtest.exit)
	print( variable_get("roomtest","exit") )
	
	pass # Replace with function body.

func _process(delta):
	pass

func parse_var(string):
	pass

func variable_get(thing,variable):
	var x = get(thing).get(variable)
	if (x != null):
		return x

