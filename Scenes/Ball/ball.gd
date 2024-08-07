extends CharacterBody2D
var speedBall=500
func _ready():
	SetBallVelocity()

func _physics_process(delta):
	var infoCollision=move_and_collide(velocity*delta)
	if infoCollision:
		velocity=velocity.bounce(infoCollision.get_normal())

func SetBallVelocity():
	if randi()%2==0:
		velocity.x=1
	else:
		velocity.x=-1
	if randi()%2==0:
		velocity.y=1
	else:
		velocity.y=-1
	velocity*=speedBall
