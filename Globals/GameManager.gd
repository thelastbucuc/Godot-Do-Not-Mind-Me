extends Node


const MAIN = preload("uid://bni0614jjmhm0")
const LEVEL = preload("uid://di2yvpsg1axeh")


func load_main_scene() -> void:
	get_tree().change_scene_to_packed(MAIN)


func load_level_scene() -> void:
	get_tree().change_scene_to_packed(LEVEL)
