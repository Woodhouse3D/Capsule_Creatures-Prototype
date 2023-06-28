extends Node2D
class_name roommanager

var rooms
var currentroom = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	rooms = [room.new(1),room.new(2),room.new(0)]
	rooms[0].description = "This is the left side of the Building."
	rooms[1].description = "This is the front of the Building."
	rooms[2].description = "This is the interior of the Building."
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass



func _on_timer_timeout():
	#print(rooms[currentroom].description)
	currentroom = rooms[currentroom].exit
	pass # Replace with function body.
