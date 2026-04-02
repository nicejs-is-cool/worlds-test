extends CanvasLayer

@onready var color_rect: ColorRect = $ColorRect

var scene_to_load: String
var color_rect_tween: Tween

func _perform_animation(func_call: Callable) -> void:
	if color_rect_tween:
		color_rect_tween.kill()
	get_tree().paused = true
	color_rect_tween = create_tween().set_trans(Tween.TRANS_SINE)
	color_rect_tween.tween_property(color_rect, "modulate:a", 1.0, 0.2).connect("finished", func_call)
	color_rect_tween.chain().tween_property(color_rect, "modulate:a", 0.0, 0.4)


func change_scene_to(scene_path: String) -> void:
	scene_to_load = scene_path
	_perform_animation(_load_new_scene)
func reload_current_scene() -> void:
	_perform_animation(_reload_scene)

func _reload_scene() -> void:
	get_tree().paused = false
	get_tree().call_deferred("reload_current_scene")

func _load_new_scene() -> void:
	get_tree().paused = false
	get_tree().call_deferred("change_scene_to_file", scene_to_load)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
