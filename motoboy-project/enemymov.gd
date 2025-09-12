extends CharacterBody2D
@onready var navigation_agent_2d = $NavigationAgent2D

@export var Player:CharacterBody2D
@export var	speed:float

func _physics_process(delta):
	var	 Direction = navigation_agent_2d.get_next_path_position()
	velocity = Direction*speed
	move_and_slide()

func _on_timer_timeout():
	navigation_agent_2d.target_position = Player.global_position
