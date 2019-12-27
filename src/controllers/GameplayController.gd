extends "res://tools/state/StateMachine.gd"
onready var game_states = {
    "game_setup":"",

}
func _ready() -> void:
    for state in game_states:
        add_state(state)
    call_deferred("set_state","game_setup")

func _state_logic(delta):
    pass

func _get_transition(delta):
    return null

func _enter_state(new_state,old_state):
    pass

func _exit_state(old_state,new_state):
    pass
