extends Area2D
@export var value := 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	area_entered.connect(func(a: Area2D):
		if a.is_in_group("player-hitbox"):
			get_tree().call_group("game", "add_score", value)
			queue_free()
)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
