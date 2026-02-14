class_name PlayerState
extends Node

signal state_transition_requested(new_state: Player.State, state_date: PlayerStateData)
var animation_player : AnimationPlayer = null
var ball: Ball = null
var player: Player = null
var state_date: PlayerStateData = PlayerStateData.new()

func setup(context_player:Player, context_state_date: PlayerStateData, context_animation_player: AnimationPlayer, context_ball: Ball) -> void:
	player = context_player
	animation_player = context_animation_player
	state_date = context_state_date
	ball = context_ball

func transition_state(new_state: Player.State, date: PlayerStateData = PlayerStateData.new()) -> void:
	state_transition_requested.emit(new_state, date)

func on_animation_complete() -> void:
	pass
