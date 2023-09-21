extends Node

var enemy = preload("res://enemy.tscn")
var count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_spawn_timer_timeout():
	count += 1
	var spawn_count = count / 10
	for a in range (int(spawn_count)):	
		var enemy_instancy = enemy.instantiate()
		add_child(enemy_instancy)
		var random_x = randi() % 480
		enemy_instancy.position = Vector2(random_x, 0)
