extends StaticBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(delta)
	translate(Vector3(0, 0, -0.2))
	if(!$Seagull/AudioStreamPlayer.playing):
		$Seagull/AudioStreamPlayer.play()

