extends Node

var dialogueScene = preload("res://src/scenes/dialogue.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("button_1") and WorldsTest.currentPlayState == WorldsTest.PlayState.Game:
		WorldsTest.currentPlayState = WorldsTest.PlayState.UI
		var diag: DialogueBox = dialogueScene.instantiate()
		diag.scale = Vector2(1, 1)
		diag.position = $DialogueContainer.position
		add_child(diag)
		diag.show_text("""Clear Body prevents stat reduction caused by other Pokémon's moves and Abilities (such as Scary Face and Intimidate), including Sticky Web. Clear Body does not prevent self-inflicted stat reductions such as from moves like Superpower or Shell Smash.

Clear Body only protects from effects that lower stat stages, so it does not prevent stat reduction from items like the Iron Ball, the status conditions paralysis or burn, or the moves Guard Split or Power Split. """, 0.05)
