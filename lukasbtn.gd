extends TextureButton

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var score = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_lukasbtn_button_down():
	$lukaspic.scale -= Vector2(0.1,0.1)


func _on_lukasbtn_button_up():
	$lukaspic.scale += Vector2(0.1,0.1)

func _on_lukasbtn_pressed():
	score += 1
	get_tree().get_root().get_node("Control").find_node("score").text = str(score)
