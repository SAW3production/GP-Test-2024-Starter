extends Sprite2D

var icon = preload("res://icon.tscn")
@onready var slider = $"../CanvasLayer/HSlider"
@onready var radius_slider = $"../CanvasLayer/Radius/Radius_slider"
var radius = 350
@onready var num = $"../CanvasLayer/num"
@onready var radius_num = $"../CanvasLayer/Radius/radius_num"

func _ready():
	num.text = str(slider.value)
	radius_num.text = str(radius_slider.value)
	radius = radius_slider.value
	
func _process(delta):
	if(Input.is_action_just_pressed("Mouse Right")):
		position = get_global_mouse_position()
		_on_create_pressed()
	
func _on_create_pressed():
	var center = position
	var theta = PI*2 / slider.value
	for i in range(1,slider.value+1):
		var obj = icon.instantiate()
		obj.position = Vector2(center.x + cos(theta * i) * radius, center.y - sin(theta *i)*radius)
		get_parent().add_child(obj)
		


func _on_h_slider_value_changed(value):
	num.text = str(value)


func _on_radius_slider_value_changed(value):
	radius_num.text = str(value)
	radius = value
