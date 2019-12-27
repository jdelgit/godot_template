extends "res://tools/state/StateMachine.gd"
onready var game_states = {
    "gameplay":get_node("StateControllers/gameplay"),
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    for state in game_states:
        add_state(state)
        game_states[state].set_process(false)
    call_deferred("set_state","gameplay")
    game_states["gameplay"].set_process(true)



func _state_logic(delta):
    if _state == states.gameplay:
        pass


func _get_transition(delta):
    return null

func _enter_state(new_state,old_state):
    game_states[new_state].set_process(true)

func _exit_state(old_state,new_state):
    game_states[old_state].set_process(false)
