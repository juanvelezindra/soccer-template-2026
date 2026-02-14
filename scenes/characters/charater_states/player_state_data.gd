class_name PlayerStateData
extends Node

var shot_direction: Vector2
var shot_power: float

static func build() -> PlayerStateData:
	return PlayerStateData.new()

func set_shot_power(power: float) -> PlayerStateData:
	shot_power = power
	return self
	

func set_shot_direction(direction: Vector2) -> PlayerStateData:
	shot_direction = direction
	return self
