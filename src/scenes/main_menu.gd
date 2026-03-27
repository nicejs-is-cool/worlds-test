extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Title.text = ProjectSettings.get_setting("application/config/name")
	$Version.text = ProjectSettings.get_setting("application/config/version")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_new_game_button_pressed() -> void: # TODO: Scene transition manager
	WorldsTest.currentPlayState = WorldsTest.PlayState.Game
	get_tree().change_scene_to_file("res://src/scenes/new_map.tscn")
