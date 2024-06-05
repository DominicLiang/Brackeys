extends CanvasLayer

@onready var label: Label = $Label

func _ready() -> void:
	label.text = "Score: " + str(0)
	GameManager.scoreChanged.connect(changeLabel)

func changeLabel(score):
	label.text = "Score: " + str(score)


