extends Area3D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var player
var colliding = false

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_parent().get_parent().get_node("Player")
	
func _physics_process(delta):
	rotate_y(delta)
	
	if(overlaps_body(player)):
		if(colliding==false):
			player.setDuck()
			colliding = true
	else:
		colliding = false
		#queue_free()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
