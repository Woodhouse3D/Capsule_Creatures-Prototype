extends Node
class_name Battle_UI

var state: int = 0
enum UI {Menu,Selection,Items,Monsters}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match state:
		UI.Selection:
			processSelection()
			pass
		UI.Items:
			pass
		UI.Monsters:
			pass

func processSelection():
	if Input.is_action_just_pressed("1"):
		pass
	if Input.is_action_just_pressed("2"):
		pass
	if Input.is_action_just_pressed("3"):
		pass
	if Input.is_action_just_pressed("4"):
		pass

func selection(text,option1,option2,option3,option4):
	pass

func monsters():
	pass
