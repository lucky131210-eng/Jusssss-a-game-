extends CharacterBody2D
@onready var a=$AnimatedSprite2D
var s:=200
var dir:=1
@onready var G=$"../punch"
func _process(delta):
	if Input.is_action_pressed("Right"):
		position.x+=dir*s*delta
		a.flip_h = false
		a.play("Walk")
	elif Input.is_action_pressed("Left"):
		position.x-=dir*s*delta
		a.flip_h = true
		a.play("Walk")
	elif Input.is_action_pressed("Punchplayer1"):
		a.play("punch")
		G.play()
		
	else:
		
		a.play("Idle")
	
