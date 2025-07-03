extends Area2D

signal coin_collected

func _ready():
	$AnimatedSprite2D.play("spin")

func _on_body_entered(body: Node2D) -> void:
	$AnimationPlayer.play("bounce")
	emit_signal("coin_collected")
	#body.add_coin()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	queue_free() 
