extends Sprite2D

var icon = preload("res://icon.tscn")
@onready var slider = $"../CanvasLayer/HSlider"
const radius = 400
@onready var num = $"../CanvasLayer/num"


func _on_create_pressed():
	var center = position
	var theta = PI*2 / slider.max_value
	for i in range(1,slider.value+1):
		var obj = icon.instantiate()
		obj.position = Vector2(center.x + cos(theta * i) * radius, center.y - sin(theta *i)*radius)
		get_parent().add_child(obj)
		


func _on_h_slider_value_changed(value):
	num.text = str(value)
