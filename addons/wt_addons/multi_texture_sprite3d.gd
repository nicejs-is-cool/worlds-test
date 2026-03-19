extends Sprite3D

class_name MultiTextureSprite3D

@export var textures: Dictionary[String, Texture2D] = {}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_active_texture(name: String) -> bool:
	if not textures.has(name):
		return false
	set_texture(textures[name])
	return true
