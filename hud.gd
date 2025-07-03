extends CanvasLayer

var coins = -2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$coins.text = str(coins)

func _on_coin_collected() -> void:
	coins += 1
	_ready()


func _on_coin_30_coin_collected() -> void:
	pass # Replace with function body.
