extends CanvasLayer

func _process(_delta: float) -> void:
	$Label.text = "score: "+str(Global.score)
