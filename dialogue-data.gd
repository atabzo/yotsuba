# DialogueData.gd
extends Node

var dialogues = {
	"the-rocket-quest": [
		"Yotsuba will make a rocket yay!",
		"This is your first dialogue.",
		"Press Space to continue."
	]
}

func get_dialogue(key: String) -> Array:
	return dialogues.get(key, [])
