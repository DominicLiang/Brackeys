extends Node

signal scoreChanged

var score: int = 0:
	get:
		return score
	set(value):
		if score == value: return
		scoreChanged.emit(value)
		score = value
		
