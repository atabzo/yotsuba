extends Node

# Path to your music file
@export var music_path: String = "res://music/3.mp3"

# Reference to the AudioStreamPlayer
var music_player: AudioStreamPlayer

func _ready():
	# Create an AudioStreamPlayer node
	music_player = AudioStreamPlayer.new()
	add_child(music_player)
	
	# Load the music file
	var music = load(music_path)
	music_player.stream = music
	
	# Enable looping
	music_player.stream.loop = true
	
	# Start playing automatically
	music_player.play()
