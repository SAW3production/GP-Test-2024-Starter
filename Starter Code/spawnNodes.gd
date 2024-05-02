extends Sprite2D

var icon = preload("res://icon.tscn")
@onready var slider = $"../CanvasLayer/HSlider"



func _on_create_pressed():
	for i in range(0,slider.value):
		var obj = icon.instantiate()
		obj.position = Vector2(2,2)
		add_child(obj)
		
