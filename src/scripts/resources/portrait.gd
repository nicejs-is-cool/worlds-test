extends Resource
class_name PMDC_Portrait

## Name of the emotion/portrait as seen on the PMDCollab Sprite Repository.
@export var emotion: String = "Normal"
## The image associated with that emotion.
@export var texture: Texture2D

func _init(p_emotion: String = "Normal", p_texture: Texture2D = Texture2D.new()) -> void:
	emotion = p_emotion
	texture = p_texture

func new() -> void:
	pass
