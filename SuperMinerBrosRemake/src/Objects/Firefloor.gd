extends StaticBody2D


func _on_firefloorArea_body_entered(body):
	print(body.name)
	if "Player" in body.name:
		# Decrease Health
		body.shrink()
		# Bounce upward
		body._velocity.y -= body.gravity / 2

