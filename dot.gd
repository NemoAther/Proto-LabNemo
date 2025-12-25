## @author: Nemo
## @license: MIT
## @date: 25.12.25
## @description: учебный проект для проверки чего-бы-то-ни-было на десяти движущихся точках.

extends Sprite2D

@export var speed = 100

var screen_end = 1000
func _ready() -> void:
	screen_end = DisplayServer.window_get_size().x - int(self.texture.get_width()/2.0)
	position.x = int(self.texture.get_width()/2.0)

func _process(delta: float) -> void:
	position.x = position.x + speed * delta
	if position.x >= screen_end:
		position.x = int(self.texture.get_width()/2.0)
