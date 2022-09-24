///@description Do your game init here
// This object is used for managing the game logic.
// Also this object manages the pause/unpause functionality of the game.

// Set game state text color
text_color = c_white

// Game Responses
state_play_message =	"game_state: play"			// Game start message
state_pause_message = "game_state: pause"		// Pause game message
state_win_message =	"game_state: win"		// You win the game message
state_lose_message =	"game_state: lose"		// You lose the game message

game_state_text = state_play_message

// Set Game States
enum game_states {
	play,
	pause,
	win,
	lose
}

// Set Initial Game State
game_state = game_states.play

// Pause the game
function game_pause()
{
	game_state = game_states.pause
	game_state_text = state_pause_message
}

// Unpause the game
function game_unpause()
{
	game_state = game_states.play
	game_state_text = state_play_message
}

// Win the game
function game_win()
{
	obj_player.add_score(1)
	game_state = game_states.win
	game_state_text = state_win_message
}

// Lose the game
function game_lose()
{
	game_state = game_states.lose
	game_state_text = state_lose_message
}