extends RigidBody2D

@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	print(1)
	animation_player.play("boom")

