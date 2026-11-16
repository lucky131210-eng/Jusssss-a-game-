extends CharacterBody2D

@onready var b=$Ghostanimation
@onready var s=$"../AudioStreamPlayer"
var speed:=200
var dir:=1

func _process(del):
	if Input.is_action_pressed("Botleft"):
		position.x-=speed*dir*del
		b.play("walk")
		b.flip_h = true
		
	elif Input.is_action_pressed("botright"):
		position.x+=speed*dir*del
		b.play("walk")
		b.flip_h = false
	elif Input.is_action_pressed("Pucnhplayer2"):
		b.play("Punch")
		s.play()
	else:
		b.play("Idle")
