extends RigidBody2D

@onready var animation_player = $AnimationPlayer

func explode():
	animation_player.play("boom")

