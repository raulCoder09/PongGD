extends Node2D

const center=Vector2(640,360)
var BlueScore=0
var RedScore=0

func _on_goal_left_body_entered(body):
	RedScore += 1
	$ScoreRed.text=str(RedScore)
	ResetGame()
	$Ball.call("SetBallVelocity")

func _on_goal_right_body_entered(body):
	BlueScore += 1
	$ScoreBlue.text=str(BlueScore)
	ResetGame()
	$Ball.call("SetBallVelocity")

func ResetGame():
	$Ball.position=center
	$PaddleBlue.position.y=center.y
	$PaddleRed.position.y=center.y
