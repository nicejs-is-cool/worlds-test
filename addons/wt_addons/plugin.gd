@tool
extends EditorPlugin


func _enable_plugin() -> void:
	# Add autoloads here.
	pass


func _disable_plugin() -> void:
	# Remove autoloads here.
	pass


func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	add_custom_type("MultiTextureSprite3D", "Sprite3D", preload("res://addons/wt_addons/multi_texture_sprite3d.gd"), preload("res://src/assets/icon.svg"))
	pass


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_custom_type("MultiTextureSprite3D")
	pass
