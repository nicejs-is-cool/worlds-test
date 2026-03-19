extends Resource
class_name PMDC_Portrait

enum Emotion {
	Angry,
	Crying,
	Determined,
	Dizzy,
	Happy,
	Inspired,
	Joyous,
	Normal,
	Pain,
	Sad,
	Shouting,
	Sigh,
	Stunned,
	Surprised,
	TearyEyed,
	Worried,
	Special0,
	Special1,
	Special2,
	Special3,
	Special4
}
## Name of the emotion/portrait as seen on the PMDCollab Sprite Repository.
@export var emotion: Emotion = Emotion.Normal
## The image associated with that emotion.
@export var texture: Texture2D

func _init(p_emotion: Emotion = Emotion.Normal, p_texture: Texture2D = Texture2D.new()) -> void:
	emotion = p_emotion
	texture = p_texture

func new() -> void:
	pass

static func str_to_emotion(name: String) -> Emotion:
	return Emotion[name]
