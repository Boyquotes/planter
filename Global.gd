extends Node
#this is an global script and can be accesed by any script
var clockHour = 0
var clockMinute = 0
var task = {}
var clock : String= ""

func  _physics_process(delta):
	#updates / refreshing the current time
	UpdateClock()

func UpdateClock():
	#updates the clockHour and clockMinute to the system time
	clockHour =  Time.get_time_dict_from_system().hour
	clockMinute = Time.get_time_dict_from_system().minute
	
	if clockMinute <= 9:
		# adds an 0 to the minute display for better formating
		clock = "[center]"+"[wave amp=50.0 freq=5.0]"+str(clockHour)+":"+"0"+str(clockMinute)+"[/wave]"+"[/center]"		
	else:
		# removes the extra 0 to the minute display		
		clock = "[center]"+"[wave amp=50.0 freq=5.0]"+str(clockHour)+":"+str(clockMinute)+"[/wave]"+"[/center]"

#todo add the option to switch to 12 hour clock
