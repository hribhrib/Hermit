extends Node3D

var animation_tree

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_tree = get_child
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	animation_tree.set("parameters/OneShot/request", AnimationNodeOneShot.ONE_SHOT_REQUEST_FIRE)
	pass
