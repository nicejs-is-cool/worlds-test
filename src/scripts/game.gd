extends Node
# stores globals and shi

# not sure if this is a good idea since they aren't gonna be used *all* the time, but it's better than it being on a class_name ig?
const PMDC_Portrait = preload("res://src/scripts/resources/portrait.gd")

enum PlayState {
	UI,
	Game
}

@export var currentPlayState: PlayState = PlayState.UI

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
