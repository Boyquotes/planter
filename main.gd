extends Control

@onready var set_time_buttons = $Set_time
@onready var hour_dile = $Hour
@onready var minute_dile = $Minute
@onready var hour_label = $Hour_Label
@onready var minute_label = $Minute_label
@onready var time_label = $Time_label



# Called when the node enters the scene tree for the first time.
func _ready():
	#clock = Global.clock
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time_label.set_text(Global.clock)
	

func _on_set_time_pressed():
	Global.task ={str(hour_dile.value)+str(minute_dile.value):"test"}
	print(str(Global.task.keys()))
