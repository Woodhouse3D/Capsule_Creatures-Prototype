extends Resource
class_name move

@export var name = "Data Crash"
@export var description = "This move seems to tear at the very fabric of reality."

@export var power: int = 10


func respond(event: Event):
	#nothing
	if (event.POWER > 5):
		print(name + " responded to " + event.NAME)
		var e = Event.new()
		e.POWER = 4
		return e
	pass

func execute():
	var x = Event.new()
	x.NAME = name
	x.POWER = power
	return x
