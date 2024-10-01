extends StaticBody3D

@export var projectile_speed = 25
@onready var projectile_spawn_point = $FireCannon/MeshInstance3D2
@onready var projectile_scene = preload("res://fire_projectile.tscn")

var fireDelay = 1
var currentFireDelay = fireDelay

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float):
	currentFireDelay -= delta
	if currentFireDelay <= 0:
		currentFireDelay += fireDelay
		var projectile = projectile_scene.instantiate()
		add_sibling(projectile)
