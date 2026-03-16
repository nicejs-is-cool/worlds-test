extends Control

class_name DialogueBox

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func dismiss() -> void:
	WorldsTest.currentPlayState = WorldsTest.PlayState.Game
	queue_free()

func show_text(text: String, animTime: float) -> void:
	$Timer.wait_time = animTime
	$Timer.start()
	$NinePatchRect.visible = true
	$RichTextLabel.text = text
	"""var w = $RichTextLabel.get_content_width()
	var h = $RichTextLabel.get_content_height()
	var hwvec2 = Vector2(w, h)
	var ms = $NinePatchRect.get_minimum_size()
	var scaleToSet = ms / hwvec2
	print(scaleToSet)
	print("cw: %d %d" % [w, h])
	$NinePatchRect.scale = scaleToSet""" # wtf was i doing
	$RichTextLabel.visible_characters = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("button_1") and WorldsTest.currentPlayState == WorldsTest.PlayState.UI:
		dismiss()


func _on_timer_timeout() -> void:
	if $RichTextLabel.visible_characters < $RichTextLabel.get_total_character_count():
		$RichTextLabel.visible_characters += 1
	else:
		$Timer.stop()
