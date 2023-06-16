extends Node

var clockHour = Time.get_time_dict_from_system().hour
var clockMinute = Time.get_time_dict_from_system().minute
var task = {}
var clock : String= ""

func  _physics_process(delta):
	clockHour =  Time.get_time_dict_from_system().hour
	clockMinute = Time.get_time_dict_from_system().minute
	
	if clockMinute <= 9:
		clock = "[center]"+"[wave amp=50.0 freq=5.0]"+str(clockHour)+":"+"0"+str(clockMinute)+"[/wave]"+"[/center]"		
	else:
		clock = "[center]"+"[wave amp=50.0 freq=5.0]"+str(clockHour)+":"+str(clockMinute)+"[/wave]"+"[/center]"
